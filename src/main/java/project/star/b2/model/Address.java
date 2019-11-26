package project.star.b2.model;


import java.util.List;

import com.google.gson.annotations.SerializedName;

import lombok.Data;

@Data
public class Address {
	
	@SerializedName("documents")		public List<Documents> documents;
	
    @Data
    public class Documents {
    	@SerializedName("road_address")			public RoadAddress road_address;
    	
    	@Data
    	public class RoadAddress {
    		@SerializedName("address_name")				public String address_name;
    		@SerializedName("building_name") 			public String building_name;
    		@SerializedName("main_building_no") 		public String main_building_no;
    		@SerializedName("region_1depth_name")		public String region_1depth_name;
    		@SerializedName("region_2depth_name")		public String region_2depth_name;
        	@SerializedName("region_3depth_name") 		public String region_3depth_name;
        	@SerializedName("road_name") 				public String road_name;
        	@SerializedName("sub_building_no") 			public String sub_building_no;
        	@SerializedName("undergroun_yn") 			public String undergroun_yn;
        	@SerializedName("underground_yn") 			public String underground_yn;
        	@SerializedName("x") 						public String x;
        	@SerializedName("y") 						public String y;
        	@SerializedName("zone_no") 					public String zone_no;
    	}	
    }
}