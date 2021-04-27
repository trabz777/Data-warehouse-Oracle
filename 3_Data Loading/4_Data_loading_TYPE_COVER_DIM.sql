declare
Cursor c_TemplateTypeOfCover is
Select "TypeofCoverID","CoverDescription"
from "Template_Type of Cover";

begin
for c_rec in c_TemplateTypeOfCover loop
insert into "TYPE_COVER_DIM" values(
c_rec."TypeofCoverID", 
c_rec."CoverDescription" );
end loop;
end;

/*ORA-12899: value too large for column "EN8886C"."TYPE_COVER_DIM"."DESCRIPTION" (actual: 28, maximum: 20) max size increased to 50*/