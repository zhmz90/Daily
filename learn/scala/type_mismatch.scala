package hbase

import org.apache.hadoop.hbase.filter._
import org.apache.hadoop.hbase.{TableName, HBaseConfiguration}
import org.apache.hadoop.hbase.mapreduce.TableInputFormat
import org.apache.hadoop.hbase.client._
import scala.collection.JavaConversions._
import org.apache.hadoop.hbase.client.{ Get, ConnectionFactory}
import org.apache.spark.{SparkConf, SparkContext}
import org.apache.hadoop.hbase.util.Bytes
import scala.collection.JavaConverters._
class OR{
  def isnotnull(x: String): Boolean = {
    !(x.equals(" "))
  }
}
object OR {
  def main(args: Array[String]) {
    val conf = new SparkConf().setAppName("ICD Pro")
    conf.set("spark.serializer", "org.apache.spark.serializer.KryoSerializer")
    conf.set("spark.kryoserializer.buffer.max", "128m")
    conf.registerKryoClasses(Array(classOf[OR]))
    val sc = new SparkContext(conf)
    val sqlContext = new org.apache.spark.sql.SQLContext(sc)
    case class ICode(IPersonID: String, ICode: String, ITime: Long)

    case class ICode1(IPersonID: String,Rowlength:Int)

    //HBase operation
    val hbaseconf = HBaseConfiguration.create()
    hbaseconf.set("hbase.zookeeper.property.clientPort", "2181")
    hbaseconf.set("hbase.zookeeper.quorum", "sparker001,sparker002,sparker009")
    hbaseconf.set("hbase.zookeeper.property.clientPort", "2181")
    hbaseconf.set("hbase.defaults.for.version.skip", "true")
    val mytableName = "ICD"
    val colFamily = "ICD_Family"

    hbaseconf.set(TableInputFormat.INPUT_TABLE, mytableName)
    val conn = ConnectionFactory.createConnection(hbaseconf)
    val userRDD = sc.newAPIHadoopRDD(hbaseconf, classOf[TableInputFormat],
      classOf[org.apache.hadoop.hbase.io.ImmutableBytesWritable],
      classOf[org.apache.hadoop.hbase.client.Result]
    )

   //get
    val userTable = TableName.valueOf(mytableName)
    val table = conn.getTable(userTable)

//rowfilter-------------------------------test ok!!!-----------------------------------
//---------------------------------------list Z01 information--------------------------
}
