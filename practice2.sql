# 取得每个company中最高薪水的人员名字
# 输出结果包含公司名称和人员名称：companyName name

 select c.companyName, e.name from (select * from Employee where id in (select id from Employee group by companyId having max(salary))) e left join Company c on c.id=e.companyId;
