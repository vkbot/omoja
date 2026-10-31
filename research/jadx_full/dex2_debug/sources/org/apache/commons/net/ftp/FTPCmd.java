package org.apache.commons.net.ftp;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Can't remove SSA var: r0v0 org.apache.commons.net.ftp.FTPCmd, still in use, count: 1, list:
  (r0v0 org.apache.commons.net.ftp.FTPCmd) from 0x01f2: SPUT (r0v0 org.apache.commons.net.ftp.FTPCmd) (LINE:499) org.apache.commons.net.ftp.FTPCmd.ABORT org.apache.commons.net.ftp.FTPCmd
	at jadx.core.utils.InsnRemover.removeSsaVar(InsnRemover.java:164)
	at jadx.core.utils.InsnRemover.unbindResult(InsnRemover.java:129)
	at jadx.core.utils.InsnRemover.lambda$unbindInsns$1(InsnRemover.java:101)
	at java.base/java.util.ArrayList.forEach(ArrayList.java:1511)
	at jadx.core.utils.InsnRemover.unbindInsns(InsnRemover.java:100)
	at jadx.core.utils.InsnRemover.removeAllAndUnbind(InsnRemover.java:257)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:187)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: compiled from: r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75 */
/* JADX INFO: loaded from: F:\omo\research\apk_contents\classes2.dex */
public final class FTPCmd {
    ABOR,
    ACCT,
    ALLO,
    APPE,
    CDUP,
    CWD,
    DELE,
    EPRT,
    EPSV,
    FEAT,
    HELP,
    LIST,
    MDTM,
    MFMT,
    MKD,
    MLSD,
    MLST,
    MODE,
    NLST,
    NOOP,
    OPTS,
    PASS,
    PASV,
    PORT,
    PWD,
    QUIT,
    REIN,
    REST,
    RETR,
    RMD,
    RNFR,
    RNTO,
    SITE,
    SIZE,
    SMNT,
    STAT,
    STOR,
    STOU,
    STRU,
    SYST,
    TYPE,
    USER;

    public static final FTPCmd ABORT;
    public static final FTPCmd ACCOUNT;
    public static final FTPCmd ALLOCATE;
    public static final FTPCmd APPEND;
    public static final FTPCmd CHANGE_TO_PARENT_DIRECTORY;
    public static final FTPCmd CHANGE_WORKING_DIRECTORY;
    public static final FTPCmd DATA_PORT;
    public static final FTPCmd DELETE;
    public static final FTPCmd FEATURES;
    public static final FTPCmd FILE_STRUCTURE;
    public static final FTPCmd GET_MOD_TIME;
    public static final FTPCmd LOGOUT;
    public static final FTPCmd MAKE_DIRECTORY;
    public static final FTPCmd MOD_TIME;
    public static final FTPCmd NAME_LIST;
    public static final FTPCmd PASSIVE;
    public static final FTPCmd PASSWORD;
    public static final FTPCmd PRINT_WORKING_DIRECTORY;
    public static final FTPCmd REINITIALIZE;
    public static final FTPCmd REMOVE_DIRECTORY;
    public static final FTPCmd RENAME_FROM;
    public static final FTPCmd RENAME_TO;
    public static final FTPCmd REPRESENTATION_TYPE;
    public static final FTPCmd RESTART;
    public static final FTPCmd RETRIEVE;
    public static final FTPCmd SET_MOD_TIME;
    public static final FTPCmd SITE_PARAMETERS;
    public static final FTPCmd STATUS;
    public static final FTPCmd STORE;
    public static final FTPCmd STORE_UNIQUE;
    public static final FTPCmd STRUCTURE_MOUNT;
    public static final FTPCmd SYSTEM;
    public static final FTPCmd TRANSFER_MODE;
    public static final FTPCmd USERNAME;

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    static {
        FTPCmd fTPCmd = MDTM;
        ABORT = new FTPCmd();
        ACCOUNT = new FTPCmd();
        ALLOCATE = new FTPCmd();
        APPEND = new FTPCmd();
        CHANGE_TO_PARENT_DIRECTORY = new FTPCmd();
        CHANGE_WORKING_DIRECTORY = new FTPCmd();
        DATA_PORT = new FTPCmd();
        DELETE = new FTPCmd();
        FEATURES = new FTPCmd();
        FILE_STRUCTURE = new FTPCmd();
        GET_MOD_TIME = fTPCmd;
        LOGOUT = new FTPCmd();
        MAKE_DIRECTORY = new FTPCmd();
        MOD_TIME = fTPCmd;
        NAME_LIST = new FTPCmd();
        PASSIVE = new FTPCmd();
        PASSWORD = new FTPCmd();
        PRINT_WORKING_DIRECTORY = new FTPCmd();
        REINITIALIZE = new FTPCmd();
        REMOVE_DIRECTORY = new FTPCmd();
        RENAME_FROM = new FTPCmd();
        RENAME_TO = new FTPCmd();
        REPRESENTATION_TYPE = new FTPCmd();
        RESTART = new FTPCmd();
        RETRIEVE = new FTPCmd();
        SET_MOD_TIME = new FTPCmd();
        SITE_PARAMETERS = new FTPCmd();
        STATUS = new FTPCmd();
        STORE = new FTPCmd();
        STORE_UNIQUE = new FTPCmd();
        STRUCTURE_MOUNT = new FTPCmd();
        SYSTEM = new FTPCmd();
        TRANSFER_MODE = new FTPCmd();
        USERNAME = new FTPCmd();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    private FTPCmd() {
        super(str, i);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static FTPCmd valueOf(String str) {
        return (FTPCmd) Enum.valueOf(FTPCmd.class, str);
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public static FTPCmd[] values() {
        return (FTPCmd[]) $VALUES.clone();
    }

    /* JADX DEBUG: Don't trust debug lines info. Lines numbers was adjusted: min line is 1 */
    public String getCommand() {
        return name();
    }
}
