package dsv.pis.chat.server;

import net.jini.core.event.RemoteEvent;

/**
 * Created with IntelliJ IDEA.
 * User: ltn
 * Date: 2/11/13
 * Time: 3:43 PM
 * To change this template use File | Settings | File Templates.
 */
public class JoinNotification extends RemoteEvent{
    protected String name;

    public JoinNotification(Object source, String name, int serial) {
        super(source, 0, serial, null);
        this.name = name;
    }

    public String getName() {
        return this.name;
    }

}
