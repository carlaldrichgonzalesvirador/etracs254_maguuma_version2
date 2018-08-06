
import com.rameses.rcp.annotations.*;
import com.rameses.rcp.common.*;
import com.rameses.seti2.models.*;
import com.rameses.osiris2.client.*
import com.rameses.osiris2.common.*;
import com.rameses.util.*;

class FarmerFacilityModel extends CrudFormModel{

    def getLookupFacility(){
            return Inv.lookupOpener('master_facility:lookup',[
               onselect :{
                   entity.parentid = it.objid;
                   entity.farmer_objid = it.objid;
                   entity.farmer_name = it.name;
                   binding.refresh(); 
               },
           ])
        }
   
}