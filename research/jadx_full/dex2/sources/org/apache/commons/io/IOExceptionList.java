package org.apache.commons.io;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public class IOExceptionList extends IOException implements Iterable<Throwable> {
    private static final long serialVersionUID = 1;
    private final List<? extends Throwable> causeList;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public IOExceptionList(String str, List<? extends Throwable> list) {
        super(str == null ? toMessage(list) : str, isEmpty(list) ? null : list.get(0));
        this.causeList = list == null ? Collections.EMPTY_LIST : list;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static void checkEmpty(List<? extends Throwable> list, Object obj) throws IOExceptionList {
        if (!isEmpty(list)) {
            throw new IOExceptionList(Objects.toString(obj, null), list);
        }
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static boolean isEmpty(List<? extends Throwable> list) {
        return size(list) == 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static int size(List<? extends Throwable> list) {
        if (list != null) {
            return list.size();
        }
        return 0;
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private static String toMessage(List<? extends Throwable> list) {
        return String.format("%,d exception(s): %s", Integer.valueOf(size(list)), list);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public <T extends Throwable> T getCause(int i, Class<T> cls) {
        return cls.cast(getCause(i));
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public <T extends Throwable> List<T> getCauseList() {
        return new ArrayList(this.causeList);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    @Override // java.lang.Iterable
    public Iterator<Throwable> iterator() {
        return getCauseList().iterator();
    }

    public <T extends Throwable> List<T> getCauseList(Class<T> cls) {
        return new ArrayList(this.causeList);
    }

    public <T extends Throwable> T getCause(int i) {
        return (T) this.causeList.get(i);
    }

    public IOExceptionList(List<? extends Throwable> list) {
        this(toMessage(list), list);
    }
}
