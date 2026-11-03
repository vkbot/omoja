package mega.car.config;

/* JADX INFO: loaded from: classes2.dex */
public interface ParamsCommon {

    public interface Active {
        public static final int ACTIVE = 1;
        public static final int INACTIVE = 0;
    }

    public interface Error {
        public static final int ERROR = 1;
        public static final int NO_ERROR = 0;
    }

    public interface LockUnlock {
        public static final int LOCKED = 0;
        public static final int UNLOCKED = 1;
    }

    public interface OnOff {
        public static final int OFF = 0;
        public static final int ON = 1;
    }

    public interface OnOffInvalid {
        public static final int INVALID = 2;
        public static final int OFF = 0;
        public static final int ON = 1;
    }

    public interface OpenClose {
        public static final int CLOSED = 0;
        public static final int OPENED = 1;
    }

    public interface Press {
        public static final int PRESSED = 1;
        public static final int RELEASED = 0;
    }

    public interface Request {
        public static final int NO_REQUEST = 0;
        public static final int REQUEST = 1;
    }
}
