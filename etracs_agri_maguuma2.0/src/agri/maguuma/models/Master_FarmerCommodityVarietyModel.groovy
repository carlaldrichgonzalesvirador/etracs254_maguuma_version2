
import com.rameses.rcp.annotations.*;
import com.rameses.rcp.common.*;
import com.rameses.seti2.models.*;
import com.rameses.osiris2.client.*
import com.rameses.osiris2.common.*;
import com.rameses.util.*;

class FarmerCommodityVarietyTypeModel extends CrudFormModel{
    
    def getLookupCommoditytype(){
            return Inv.lookupOpener('master_commoditytype:lookup',[
               onselect :{
                   entity.commoditytype_objid = it.objid;
                   entity.commoditytype_name = it.name;
                   binding.refresh(); 
               },
           ])
        }

   
}