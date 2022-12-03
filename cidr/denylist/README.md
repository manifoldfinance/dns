# IP/CIDR Address List

> Format based on https://docs.oracle.com/en-us/iaas/Content/General/Concepts/addressranges.htm#osn-ranges

## Schema

| **Field Name**                                                                                 | **Definition**                                            | **Type**                                                     | **Example**                                             |
|------------------------------------------------------------------------------------------------|-----------------------------------------------------------|--------------------------------------------------------------|---------------------------------------------------------|
| last_updated_timestamp                                                                         | "File creation time in ISO 8601 format.                   |                                                              |                                                         |
| Expressed as <date>T<time>"                                                                    | string                                                    | """last_updated_timestamp"": ""2019-11-18T19:55:47.204985""" |                                                         |
| regions                                                                                        | IP CIDR ranges grouped by region.                         | array                                                        | See preceding Example of the public ip ranges.json file |
| region                                                                                         | "The region of the IP CIDR ranges.                        |                                                              |                                                         |
| Valid values: Any region in the Oracle Cloud Infrastructure commercial realm.                  |                                                           |                                                              |                                                         |
| For a complete list of regions                                                                 | see Regions and Availability Domains."                    | string                                                       | """region"": ""us-phoenix-1"""                          |
| cidrs                                                                                          | A group of IP address CIDR ranges.                        | array                                                        | See preceding Example of the public ip ranges.json file |
| cidr                                                                                           | One or more IPv4 IP addresses expressed in CIDR notation. | string                                                       | """cidr"": ""147.154.0.0/18"""                          |
| tags                                                                                           | "The services associated with the IP address CIDR range.  |                                                              |                                                         |
| Valid values:                                                                                  |                                                           |                                                              |                                                         |
| OCI: The VCN CIDR blocks.                                                                      |                                                           |                                                              |                                                         |
| OSN: The CIDR block ranges for the Oracle Services Network.                                    |                                                           |                                                              |                                                         |
| OBJECT_STORAGE: The CIDR block ranges used by the Object Storage service. For more information | see Overview of Object Storage."                          | array of string values                                       | """tags"": [ ""OCI"" ]"                                 |

 ### Example
  
  ```json
  {
    "last_updated_timestamp": "2019-11-18T19:55:47.204985",
    "regions": [
        {
            "region": "us-phoenix-1",
            "cidrs": [
                {
                    "cidr": "129.146.0.0/21",
                    "tags": [
                        "OCI"
                    ]
                },
                {
                    "cidr": "134.70.8.0/21",
                    "tags": [
                        "OSN",
                        "OBJECT_STORAGE"
                    ]
                },
            ]
        }
        {
            "region": "us-ashburn-1",
            "cidrs": [
                {
                    "cidr": "129.213.8.0/21",
                    "tags": [
                        "OCI"
                    ]
                },
                {
                    "cidr": "134.70.24.0/21",
                    "tags": [
                        "OSN",
                        "OBJECT_STORAGE"
                    ]
                }
            ]
        }
    ]
}
```
