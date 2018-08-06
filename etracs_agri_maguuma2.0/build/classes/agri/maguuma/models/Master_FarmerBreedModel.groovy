
import com.rameses.rcp.annotations.*;
import com.rameses.rcp.common.*;
import com.rameses.seti2.models.*;
import com.rameses.osiris2.client.*
import com.rameses.osiris2.common.*;
import com.rameses.util.*;

class Master_FarmerBreedModel extends CrudFormModel{

   def getLookupSpecie(){
            return Inv.lookupOpener('master_specie:lookup',[
               onselect :{
                   entity.species_objid = it.objid;
                   entity.species_name = it.name;
                   binding.refresh(); 
               }
           ])
        }
}