# 取得每个company中最高薪水的人员名字
# 输出结果包含公司名称和人员名称：companyName name

select  sum(e.id) from Employee e left join Company c on e.companyId=c.id group by e.companyId having max(e.salary)