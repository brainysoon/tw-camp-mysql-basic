#取得平均薪水最高的公司
#输出公司名称和平均薪水：companyName avgSalary

select c.companyName, e.avgSalary from (select avgT.companyId, avgT.avgSalary from (select companyId, avg(salary) as avgSalary from Employee group by companyId) avgT order by avgT.avgSalary limit 1) e left join Company c on e.companyId=c.id;
