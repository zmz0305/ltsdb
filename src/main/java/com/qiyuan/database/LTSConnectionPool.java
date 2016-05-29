package com.qiyuan.database;
import com.mchange.v2.c3p0.ComboPooledDataSource;
import org.apache.log4j.Logger;
import com.qiyuan.properties.LTSProperties;

public class LTSConnectionPool {
	/** Singleton? */
	static LTSConnectionPool ltspoll = null;
	/** the logger */
	private final static Logger logger = Logger.getLogger(LTSConnectionPool.class.getName());
	
	/** database driver */
	private String driver = null;
	
	/** the user account */
	private String user = null;
	
	/** the password. */
    private String password = null;
    
    /** the db url. */
    private String url = null;
    
    /** the combo pooled data source. */
    private ComboPooledDataSource ltsPool = null;
    
    /**
     * sinleton getter
     * @return the instance
     */
    public static LTSConnectionPool get(){
    	if(ltspoll == null){
    		ltspoll = new LTSConnectionPool();
    	}
    	return ltspoll;
    }
    
    

}
