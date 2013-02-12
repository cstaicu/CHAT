package dsv.pis.chat.server;

import net.jini.core.event.RemoteEvent;

import java.util.Date;

/**
 * Created with IntelliJ IDEA.
 * User: ltn
 * Date: 2/11/13
 * Time: 3:43 PM
 * To change this template use File | Settings | File Templates.
 */
public class JoinNotification extends RemoteEvent{
    protected String name;
    protected Date date;

    public JoinNotification(Object source, String name, Date date, int serial) {
        super(source, 0, serial, null);
        this.name = name;
        this.date = date;
    }

    public String getName() {
        return this.name;
    }

    public Date getDate() {
        return this.date;
    }
}
