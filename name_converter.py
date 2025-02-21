import csv

def make_function(item, idx):
	intro = 'execute if score @s VillagerNames_NameRNG matches '
	second = ' run data modify entity @s CustomName set value "'
	return (''.join([intro,str(idx),second,item,'"']))

def convert_table(table_path):
	with open(table_path, 'r') as table:
		reader = csv.reader(table)
		total = []
		for column in zip(*reader):
			for item in column:
				if str(item)=='':
					break
				total.append(item)
		return total

def convert_txt(txt_path):
	txt = open(txt_path, 'r')
	data = txt.read()
	data_into_list = data.split("\n") 
	return data_into_list
	my_file.close() 
		

def write_output(arr):
	with open(file_path, 'w') as file:
		file.write("Name Commands:\n")
		for i in range(len(arr)):
			file.write(make_function(arr[i], i+1)+'\n')
			if (i+1) % 20 == 0:
				file.write('\n')

common_table = 'name_files/table_common.csv'
uncommon_table = 'name_files/table_uncommon.csv'
rare_table = 'name_files/table_rare.csv'

common_txt = 'name_files/names_common.txt'
uncommon_txt = 'name_files/names_uncommon.txt'
rare_txt = 'name_files/names_rare.txt'

file_path = 'name_output.txt'

write_output(convert_txt(rare_txt))
