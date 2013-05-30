#Install Seal dependencies

#include_recipe "pydoop-cookbook"
#include_recipe "hadoop-BAM-cookbook"

package "protobuf-compiler"
package "libprotobuf-dev"
package "libprotoc-dev"
package "python-protobuf"
package "ant-optional"
package "libboost-python-dev"
