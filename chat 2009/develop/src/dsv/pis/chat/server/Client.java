package dsv.pis.chat.server;

import net.jini.core.event.RemoteEventListener;

import java.io.Serializable;
import java.util.Date;

/**
 * Created with IntelliJ IDEA.
 * User: ltn
 * Date: 2/12/13
 * Time: 1:31 PM
 * To change this template use File | Settings | File Templates.
 */
public class Client implements Serializable {
    protected String name;
    protected Date joinDate;
    protected Date leaveDate;

    public Client(String name, Date joinDate, Date leaveDate) {
        this.name = name;
        this.joinDate = joinDate;
        this.leaveDate = leaveDate;
    }

    public String getName() {
        return name;
    }

    public Date getJoinDate() {
        return joinDate;
    }

    public Date getLeaveDate() {
        return leaveDate;
    }

}
