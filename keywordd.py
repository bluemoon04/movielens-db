import csv 
import ast

with open('keywords.csv','r', encoding='utf-8') as csv_file:
    csv_reader = csv.DictReader(csv_file)
    data = [row for row in csv_reader]
   
    with open('haskeywords.csv','w', encoding='utf-8') as new_file:
        fieldnames = ['movie_id','keywords']
        csv_writer= csv.DictWriter(new_file,fieldnames=fieldnames)
        csv_writer.writeheader()
        seen = set()
        for line in data:
                jsonString=line['keywords']
                dataa = ast.literal_eval(jsonString)
                for i in dataa:
                    if i['id'] is not seen: 
                        seen.add(i['id'])
                        csv_writer.writerow({
                            'movie_id':line['movie_id'],'keywords':i['id']     
                        })
                
    with open('keyword.csv','w', encoding='utf-8') as new_file:
        fieldnames = ['id','name']
        csv_writer= csv.DictWriter(new_file,fieldnames=fieldnames)
        csv_writer.writeheader()
        for line in data:
            jsonString=line['keywords']
            dataa = ast.literal_eval(jsonString)
            for i in dataa:
                csv_writer.writerow({
                    'id':i['id'],'name':i['name']
                })
            
            
            
            
            
