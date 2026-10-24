.class public Lorg/apache/ftpserver/command/CommandFactoryFactory;
.super Ljava/lang/Object;
.source "CommandFactoryFactory.java"


# static fields
.field private static final DEFAULT_COMMAND_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lorg/apache/ftpserver/command/Command;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private commandMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/ftpserver/command/Command;",
            ">;"
        }
    .end annotation
.end field

.field private useDefaultCommands:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/ftpserver/command/CommandFactoryFactory;->DEFAULT_COMMAND_MAP:Ljava/util/HashMap;

    .line 89
    new-instance v1, Lorg/apache/ftpserver/command/impl/ABOR;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/ABOR;-><init>()V

    const-string v2, "ABOR"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lorg/apache/ftpserver/command/CommandFactoryFactory;->DEFAULT_COMMAND_MAP:Ljava/util/HashMap;

    new-instance v1, Lorg/apache/ftpserver/command/impl/ACCT;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/ACCT;-><init>()V

    const-string v2, "ACCT"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lorg/apache/ftpserver/command/CommandFactoryFactory;->DEFAULT_COMMAND_MAP:Ljava/util/HashMap;

    new-instance v1, Lorg/apache/ftpserver/command/impl/APPE;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/APPE;-><init>()V

    const-string v2, "APPE"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lorg/apache/ftpserver/command/CommandFactoryFactory;->DEFAULT_COMMAND_MAP:Ljava/util/HashMap;

    new-instance v1, Lorg/apache/ftpserver/command/impl/AUTH;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/AUTH;-><init>()V

    const-string v2, "AUTH"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lorg/apache/ftpserver/command/CommandFactoryFactory;->DEFAULT_COMMAND_MAP:Ljava/util/HashMap;

    new-instance v1, Lorg/apache/ftpserver/command/impl/CDUP;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/CDUP;-><init>()V

    const-string v2, "CDUP"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lorg/apache/ftpserver/command/CommandFactoryFactory;->DEFAULT_COMMAND_MAP:Ljava/util/HashMap;

    new-instance v1, Lorg/apache/ftpserver/command/impl/CWD;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/CWD;-><init>()V

    const-string v2, "CWD"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lorg/apache/ftpserver/command/CommandFactoryFactory;->DEFAULT_COMMAND_MAP:Ljava/util/HashMap;

    new-instance v1, Lorg/apache/ftpserver/command/impl/DELE;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/DELE;-><init>()V

    const-string v2, "DELE"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lorg/apache/ftpserver/command/CommandFactoryFactory;->DEFAULT_COMMAND_MAP:Ljava/util/HashMap;

    new-instance v1, Lorg/apache/ftpserver/command/impl/EPRT;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/EPRT;-><init>()V

    const-string v2, "EPRT"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lorg/apache/ftpserver/command/CommandFactoryFactory;->DEFAULT_COMMAND_MAP:Ljava/util/HashMap;

    new-instance v1, Lorg/apache/ftpserver/command/impl/EPSV;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/EPSV;-><init>()V

    const-string v2, "EPSV"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lorg/apache/ftpserver/command/CommandFactoryFactory;->DEFAULT_COMMAND_MAP:Ljava/util/HashMap;

    new-instance v1, Lorg/apache/ftpserver/command/impl/FEAT;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/FEAT;-><init>()V

    const-string v2, "FEAT"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lorg/apache/ftpserver/command/CommandFactoryFactory;->DEFAULT_COMMAND_MAP:Ljava/util/HashMap;

    new-instance v1, Lorg/apache/ftpserver/command/impl/HELP;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/HELP;-><init>()V

    const-string v2, "HELP"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lorg/apache/ftpserver/command/CommandFactoryFactory;->DEFAULT_COMMAND_MAP:Ljava/util/HashMap;

    new-instance v1, Lorg/apache/ftpserver/command/impl/LANG;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/LANG;-><init>()V

    const-string v2, "LANG"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lorg/apache/ftpserver/command/CommandFactoryFactory;->DEFAULT_COMMAND_MAP:Ljava/util/HashMap;

    new-instance v1, Lorg/apache/ftpserver/command/impl/LIST;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/LIST;-><init>()V

    const-string v2, "LIST"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lorg/apache/ftpserver/command/CommandFactoryFactory;->DEFAULT_COMMAND_MAP:Ljava/util/HashMap;

    new-instance v1, Lorg/apache/ftpserver/command/impl/MD5;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/MD5;-><init>()V

    const-string v2, "MD5"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lorg/apache/ftpserver/command/CommandFactoryFactory;->DEFAULT_COMMAND_MAP:Ljava/util/HashMap;

    new-instance v1, Lorg/apache/ftpserver/command/impl/MFMT;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/MFMT;-><init>()V

    const-string v2, "MFMT"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lorg/apache/ftpserver/command/CommandFactoryFactory;->DEFAULT_COMMAND_MAP:Ljava/util/HashMap;

    new-instance v1, Lorg/apache/ftpserver/command/impl/MD5;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/MD5;-><init>()V

    const-string v2, "MMD5"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lorg/apache/ftpserver/command/CommandFactoryFactory;->DEFAULT_COMMAND_MAP:Ljava/util/HashMap;

    new-instance v1, Lorg/apache/ftpserver/command/impl/MDTM;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/MDTM;-><init>()V

    const-string v2, "MDTM"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lorg/apache/ftpserver/command/CommandFactoryFactory;->DEFAULT_COMMAND_MAP:Ljava/util/HashMap;

    new-instance v1, Lorg/apache/ftpserver/command/impl/MLST;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/MLST;-><init>()V

    const-string v2, "MLST"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lorg/apache/ftpserver/command/CommandFactoryFactory;->DEFAULT_COMMAND_MAP:Ljava/util/HashMap;

    new-instance v1, Lorg/apache/ftpserver/command/impl/MKD;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/MKD;-><init>()V

    const-string v2, "MKD"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lorg/apache/ftpserver/command/CommandFactoryFactory;->DEFAULT_COMMAND_MAP:Ljava/util/HashMap;

    new-instance v1, Lorg/apache/ftpserver/command/impl/MLSD;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/MLSD;-><init>()V

    const-string v2, "MLSD"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lorg/apache/ftpserver/command/CommandFactoryFactory;->DEFAULT_COMMAND_MAP:Ljava/util/HashMap;

    new-instance v1, Lorg/apache/ftpserver/command/impl/MODE;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/MODE;-><init>()V

    const-string v2, "MODE"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lorg/apache/ftpserver/command/CommandFactoryFactory;->DEFAULT_COMMAND_MAP:Ljava/util/HashMap;

    new-instance v1, Lorg/apache/ftpserver/command/impl/NLST;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/NLST;-><init>()V

    const-string v2, "NLST"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lorg/apache/ftpserver/command/CommandFactoryFactory;->DEFAULT_COMMAND_MAP:Ljava/util/HashMap;

    new-instance v1, Lorg/apache/ftpserver/command/impl/NOOP;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/NOOP;-><init>()V

    const-string v2, "NOOP"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lorg/apache/ftpserver/command/CommandFactoryFactory;->DEFAULT_COMMAND_MAP:Ljava/util/HashMap;

    new-instance v1, Lorg/apache/ftpserver/command/impl/OPTS;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/OPTS;-><init>()V

    const-string v2, "OPTS"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lorg/apache/ftpserver/command/CommandFactoryFactory;->DEFAULT_COMMAND_MAP:Ljava/util/HashMap;

    new-instance v1, Lorg/apache/ftpserver/command/impl/PASS;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/PASS;-><init>()V

    const-string v2, "PASS"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lorg/apache/ftpserver/command/CommandFactoryFactory;->DEFAULT_COMMAND_MAP:Ljava/util/HashMap;

    new-instance v1, Lorg/apache/ftpserver/command/impl/PASV;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/PASV;-><init>()V

    const-string v2, "PASV"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lorg/apache/ftpserver/command/CommandFactoryFactory;->DEFAULT_COMMAND_MAP:Ljava/util/HashMap;

    new-instance v1, Lorg/apache/ftpserver/command/impl/PBSZ;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/PBSZ;-><init>()V

    const-string v2, "PBSZ"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lorg/apache/ftpserver/command/CommandFactoryFactory;->DEFAULT_COMMAND_MAP:Ljava/util/HashMap;

    new-instance v1, Lorg/apache/ftpserver/command/impl/PORT;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/PORT;-><init>()V

    const-string v2, "PORT"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lorg/apache/ftpserver/command/CommandFactoryFactory;->DEFAULT_COMMAND_MAP:Ljava/util/HashMap;

    new-instance v1, Lorg/apache/ftpserver/command/impl/PROT;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/PROT;-><init>()V

    const-string v2, "PROT"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lorg/apache/ftpserver/command/CommandFactoryFactory;->DEFAULT_COMMAND_MAP:Ljava/util/HashMap;

    new-instance v1, Lorg/apache/ftpserver/command/impl/PWD;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/PWD;-><init>()V

    const-string v2, "PWD"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lorg/apache/ftpserver/command/CommandFactoryFactory;->DEFAULT_COMMAND_MAP:Ljava/util/HashMap;

    new-instance v1, Lorg/apache/ftpserver/command/impl/QUIT;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/QUIT;-><init>()V

    const-string v2, "QUIT"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lorg/apache/ftpserver/command/CommandFactoryFactory;->DEFAULT_COMMAND_MAP:Ljava/util/HashMap;

    new-instance v1, Lorg/apache/ftpserver/command/impl/REIN;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/REIN;-><init>()V

    const-string v2, "REIN"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lorg/apache/ftpserver/command/CommandFactoryFactory;->DEFAULT_COMMAND_MAP:Ljava/util/HashMap;

    new-instance v1, Lorg/apache/ftpserver/command/impl/REST;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/REST;-><init>()V

    const-string v2, "REST"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lorg/apache/ftpserver/command/CommandFactoryFactory;->DEFAULT_COMMAND_MAP:Ljava/util/HashMap;

    new-instance v1, Lorg/apache/ftpserver/command/impl/RETR;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/RETR;-><init>()V

    const-string v2, "RETR"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lorg/apache/ftpserver/command/CommandFactoryFactory;->DEFAULT_COMMAND_MAP:Ljava/util/HashMap;

    new-instance v1, Lorg/apache/ftpserver/command/impl/RMD;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/RMD;-><init>()V

    const-string v2, "RMD"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lorg/apache/ftpserver/command/CommandFactoryFactory;->DEFAULT_COMMAND_MAP:Ljava/util/HashMap;

    new-instance v1, Lorg/apache/ftpserver/command/impl/RNFR;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/RNFR;-><init>()V

    const-string v2, "RNFR"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lorg/apache/ftpserver/command/CommandFactoryFactory;->DEFAULT_COMMAND_MAP:Ljava/util/HashMap;

    new-instance v1, Lorg/apache/ftpserver/command/impl/RNTO;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/RNTO;-><init>()V

    const-string v2, "RNTO"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lorg/apache/ftpserver/command/CommandFactoryFactory;->DEFAULT_COMMAND_MAP:Ljava/util/HashMap;

    new-instance v1, Lorg/apache/ftpserver/command/impl/SITE;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/SITE;-><init>()V

    const-string v2, "SITE"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lorg/apache/ftpserver/command/CommandFactoryFactory;->DEFAULT_COMMAND_MAP:Ljava/util/HashMap;

    new-instance v1, Lorg/apache/ftpserver/command/impl/SIZE;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/SIZE;-><init>()V

    const-string v2, "SIZE"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lorg/apache/ftpserver/command/CommandFactoryFactory;->DEFAULT_COMMAND_MAP:Ljava/util/HashMap;

    new-instance v1, Lorg/apache/ftpserver/command/impl/SITE_DESCUSER;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/SITE_DESCUSER;-><init>()V

    const-string v2, "SITE_DESCUSER"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lorg/apache/ftpserver/command/CommandFactoryFactory;->DEFAULT_COMMAND_MAP:Ljava/util/HashMap;

    new-instance v1, Lorg/apache/ftpserver/command/impl/SITE_HELP;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/SITE_HELP;-><init>()V

    const-string v2, "SITE_HELP"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lorg/apache/ftpserver/command/CommandFactoryFactory;->DEFAULT_COMMAND_MAP:Ljava/util/HashMap;

    new-instance v1, Lorg/apache/ftpserver/command/impl/SITE_STAT;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/SITE_STAT;-><init>()V

    const-string v2, "SITE_STAT"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lorg/apache/ftpserver/command/CommandFactoryFactory;->DEFAULT_COMMAND_MAP:Ljava/util/HashMap;

    new-instance v1, Lorg/apache/ftpserver/command/impl/SITE_WHO;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/SITE_WHO;-><init>()V

    const-string v2, "SITE_WHO"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lorg/apache/ftpserver/command/CommandFactoryFactory;->DEFAULT_COMMAND_MAP:Ljava/util/HashMap;

    new-instance v1, Lorg/apache/ftpserver/command/impl/SITE_ZONE;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/SITE_ZONE;-><init>()V

    const-string v2, "SITE_ZONE"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lorg/apache/ftpserver/command/CommandFactoryFactory;->DEFAULT_COMMAND_MAP:Ljava/util/HashMap;

    new-instance v1, Lorg/apache/ftpserver/command/impl/STAT;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/STAT;-><init>()V

    const-string v2, "STAT"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lorg/apache/ftpserver/command/CommandFactoryFactory;->DEFAULT_COMMAND_MAP:Ljava/util/HashMap;

    new-instance v1, Lorg/apache/ftpserver/command/impl/STOR;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/STOR;-><init>()V

    const-string v2, "STOR"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lorg/apache/ftpserver/command/CommandFactoryFactory;->DEFAULT_COMMAND_MAP:Ljava/util/HashMap;

    new-instance v1, Lorg/apache/ftpserver/command/impl/STOU;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/STOU;-><init>()V

    const-string v2, "STOU"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lorg/apache/ftpserver/command/CommandFactoryFactory;->DEFAULT_COMMAND_MAP:Ljava/util/HashMap;

    new-instance v1, Lorg/apache/ftpserver/command/impl/STRU;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/STRU;-><init>()V

    const-string v2, "STRU"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lorg/apache/ftpserver/command/CommandFactoryFactory;->DEFAULT_COMMAND_MAP:Ljava/util/HashMap;

    new-instance v1, Lorg/apache/ftpserver/command/impl/SYST;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/SYST;-><init>()V

    const-string v2, "SYST"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lorg/apache/ftpserver/command/CommandFactoryFactory;->DEFAULT_COMMAND_MAP:Ljava/util/HashMap;

    new-instance v1, Lorg/apache/ftpserver/command/impl/TYPE;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/TYPE;-><init>()V

    const-string v2, "TYPE"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lorg/apache/ftpserver/command/CommandFactoryFactory;->DEFAULT_COMMAND_MAP:Ljava/util/HashMap;

    new-instance v1, Lorg/apache/ftpserver/command/impl/USER;

    invoke-direct {v1}, Lorg/apache/ftpserver/command/impl/USER;-><init>()V

    const-string v2, "USER"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/ftpserver/command/CommandFactoryFactory;->commandMap:Ljava/util/Map;

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ftpserver/command/CommandFactoryFactory;->useDefaultCommands:Z

    return-void
.end method


# virtual methods
.method public addCommand(Ljava/lang/String;Lorg/apache/ftpserver/command/Command;)V
    .locals 2
    .param p1, "commandName"    # Ljava/lang/String;
    .param p2, "command"    # Lorg/apache/ftpserver/command/Command;

    .line 197
    if-eqz p1, :cond_1

    .line 200
    if-eqz p2, :cond_0

    .line 204
    iget-object v0, p0, Lorg/apache/ftpserver/command/CommandFactoryFactory;->commandMap:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    return-void

    .line 201
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "command can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "commandName can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public createCommandFactory()Lorg/apache/ftpserver/command/CommandFactory;
    .locals 2

    .line 153
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 154
    .local v0, "mergedCommands":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ftpserver/command/Command;>;"
    iget-boolean v1, p0, Lorg/apache/ftpserver/command/CommandFactoryFactory;->useDefaultCommands:Z

    if-eqz v1, :cond_0

    .line 155
    sget-object v1, Lorg/apache/ftpserver/command/CommandFactoryFactory;->DEFAULT_COMMAND_MAP:Ljava/util/HashMap;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 158
    :cond_0
    iget-object v1, p0, Lorg/apache/ftpserver/command/CommandFactoryFactory;->commandMap:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 160
    new-instance v1, Lorg/apache/ftpserver/command/impl/DefaultCommandFactory;

    invoke-direct {v1, v0}, Lorg/apache/ftpserver/command/impl/DefaultCommandFactory;-><init>(Ljava/util/Map;)V

    return-object v1
.end method

.method public getCommandMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/ftpserver/command/Command;",
            ">;"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lorg/apache/ftpserver/command/CommandFactoryFactory;->commandMap:Ljava/util/Map;

    return-object v0
.end method

.method public isUseDefaultCommands()Z
    .locals 1

    .line 169
    iget-boolean v0, p0, Lorg/apache/ftpserver/command/CommandFactoryFactory;->useDefaultCommands:Z

    return v0
.end method

.method public setCommandMap(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/ftpserver/command/Command;",
            ">;)V"
        }
    .end annotation

    .line 214
    .local p1, "commandMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/apache/ftpserver/command/Command;>;"
    if-eqz p1, :cond_1

    .line 218
    iget-object v0, p0, Lorg/apache/ftpserver/command/CommandFactoryFactory;->commandMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 220
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 221
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/ftpserver/command/Command;>;"
    iget-object v2, p0, Lorg/apache/ftpserver/command/CommandFactoryFactory;->commandMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/apache/ftpserver/command/Command;>;"
    goto :goto_0

    .line 223
    :cond_0
    return-void

    .line 215
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "commandMap can not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setUseDefaultCommands(Z)V
    .locals 0
    .param p1, "useDefaultCommands"    # Z

    .line 179
    iput-boolean p1, p0, Lorg/apache/ftpserver/command/CommandFactoryFactory;->useDefaultCommands:Z

    .line 180
    return-void
.end method
