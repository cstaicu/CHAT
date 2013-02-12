package dsv.pis.chat.server;

import net.jini.core.event.RemoteEventListener;

import java.util.Date;

/**
 * Created with IntelliJ IDEA.
 * User: ltn
 * Date: 2/12/13
 * Time: 1:31 PM
 * To change this template use File | Settings | File Templates.
 */
public class Client {
    protected RemoteEventListener rel;
    protected String name;
    protected Date joinDate;
    protected Date leaveDate;

    public Client(RemoteEventListener rel, String name, Date joinDate, Date leaveDate) {
        this.rel = rel;
        this.name = name;
        this.joinDate = joinDate;
        this.leaveDate = leaveDate;
    }

    public RemoteEventListener getRel() {
        return rel;
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

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Client client = (Client) o;

        if (!rel.equals(client.rel)) return false;

        return true;
    }

    @Override
    public int hashCode() {
        return rel.hashCode();
    }
}
