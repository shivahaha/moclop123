--Organization
Select o.OrganizationName,a.AddressLine,a.Postcode,(FirstName + SurName) AS [Full Name],o.IsActive from Organizations o inner join 
Addresses a on o.AddressId = a.AddressId
inner join Contacts c on o.ContactId = c.ContactId
order by OrganizationName

------Supporting Materials
Select s.Url,Description,s.Type,u.Account As [AddBy],s.AddedDate from
SupportingMaterials s inner join Users u on s.UserId = u.UserId
order by Url

----Directorate 

Select d.DiractorateName AS[BU/DiractorateName],a.AddressLine,a.Postcode,(FirstName + SurName) AS [Contact],
d.IsActive from Directorates d inner join 
Addresses a on d.AddressId = a.AddressId
inner join Contacts c on d.ContactId = c.ContactId
order by DiractorateName

------Department
Select de.DepartmentName,a.AddressLine,a.Postcode,(FirstName + SurName) AS [Contact],
de.IsActive from Departments de inner join 
Addresses a on de.AddressId = a.AddressId
inner join Contacts c on de.ContactId = c.ContactId
order by DepartmentName

-----Service

Select se.ServiceName,se.ShortDescription AS [Description],se.SubType As [ServiceType],
(FirstName + SurName) AS [Contact],se.IsActive from 
Services se inner join Contacts c on se.ContactId = c.ContactId
order by ServiceName

-----------------TrustRegions
Select tr.TrustRegionName,tr.Description,ct.CountryName As [Nation/Country], tr.IsActive
from TrustRegions tr inner join Countries ct on tr.CountryId = ct.CountryId
order by TrustRegionName

----------------Trust Disttrict
Select td.TrustDistrictName as [DistrictName], td.Description,tr.TrustRegionName as [Region],td.IsActive
from TrustDistricts td inner join TrustRegions tr on td.TrustRegionId = tr.TrustRegionId
order By TrustDistrictName

-----------Government
Select gv.GovOfficeRegionName,gv.Description,co.CountyName As [Nation/Country], gv.IsActive
from GovOfficeRegions gv inner join Counties co on gv.GovOfficeRegionId = co.GovOfficeRegionId
order by GovOfficeRegionName

------------------Premises
Select pr.LocationName,a.AddressLine,a.Postcode,pr.IsActive
from Premises pr inner join Addresses a on pr.AddressId = a.AddressId
order by LocationName
------------Programme
Select pr.ProgramName,pr.Description,(FirstName + SurName) AS [Contact],pr.IsActive
from Programs pr inner join Contacts ct on pr.ContactId = ct.ContactId
order by ProgramName

------Team

Select t.TeamName,a.AddressLine as [Address],t.CityTown,ct.CountryName,bu.BusinessName as [Business]
from Teams t inner join Addresses a on t.AddressId = a.AddressId
inner join BusinessTypes bu on t.BusinessId = bu.BusinessId
inner join Countries ct on t.CountryId = ct.CountryId
order by TeamName 