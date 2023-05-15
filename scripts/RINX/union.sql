Create table pptunion as (
Select  * from ppt1981
UNION ALL
Select * from ppt1982
UNION ALL
Select * from ppt1983
UNION ALL
Select * from ppt1984
UNION ALL
Select * from ppt1985
UNION ALL
Select * from ppt1986
UNION ALL
Select * from ppt1987
UNION ALL
Select * from ppt1988
UNION ALL
Select * from ppt1989
UNION ALL
Select * from ppt1990
UNION ALL
Select * from ppt1991
UNION ALL
Select * from ppt1992
UNION ALL
Select * from ppt1993
UNION ALL
Select * from ppt1994
UNION ALL
Select * from ppt1995
UNION ALL
Select * from ppt1996
UNION ALL
Select * from ppt1997
UNION ALL
Select * from ppt1998
UNION ALL
Select * from ppt1999
UNION ALL
Select * from ppt2000
UNION ALL
Select * from ppt2001
UNION ALL
Select * from ppt2002
UNION ALL
Select * from ppt2003
UNION ALL
Select * from ppt2004
UNION ALL
Select * from ppt2005
UNION ALL
Select * from ppt2006
UNION ALL
Select * from ppt2007
UNION ALL
Select * from ppt2008
UNION ALL
Select * from ppt2009
UNION ALL
Select * from ppt2010
UNION ALL
Select * from ppt2011
UNION ALL
Select * from ppt2012
UNION ALL
Select * from ppt2013
UNION ALL
Select * from ppt2014
UNION ALL
Select * from ppt2015
UNION ALL
Select * from ppt2016
UNION ALL
Select * from ppt2017
UNION ALL
Select * from ppt2018
UNION ALL
Select * from ppt2019
);
Alter table pptunion add column filedate date;
Update pptunion set filedate=TO_DATE(substring(filename,18,8),'YYYYMMDD'); # May need to update the format to correct length for ppt the year starts at index 18, for tmax it is 19, etc. 
