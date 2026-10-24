.class Lmega/config/util/SleepRule$Opt$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmega/config/XmlSerializable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmega/config/util/SleepRule$Opt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmega/config/XmlSerializable$Creator<",
        "Lmega/config/util/SleepRule$Opt;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic create(Lmega/config/XmlData;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lmega/config/util/SleepRule$Opt$1;->create(Lmega/config/XmlData;)Lmega/config/util/SleepRule$Opt;

    move-result-object p0

    return-object p0
.end method

.method public create(Lmega/config/XmlData;)Lmega/config/util/SleepRule$Opt;
    .locals 1

    .line 2
    new-instance p0, Lmega/config/util/SleepRule$Opt;

    invoke-direct {p0}, Lmega/config/util/SleepRule$Opt;-><init>()V

    const-string v0, "action"

    .line 3
    invoke-virtual {p1, v0}, Lmega/config/XmlData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmega/config/util/SleepRule$Opt;->action:Ljava/lang/String;

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string/jumbo v0, "retKey"

    .line 5
    invoke-virtual {p1, v0}, Lmega/config/XmlData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmega/config/util/SleepRule$Opt;->retKey:Ljava/lang/String;

    const-string/jumbo v0, "retType"

    .line 6
    invoke-virtual {p1, v0}, Lmega/config/XmlData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmega/config/util/SleepRule$Opt;->retType:Ljava/lang/String;

    const-string/jumbo v0, "op"

    .line 7
    invoke-virtual {p1, v0}, Lmega/config/XmlData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmega/config/util/SleepRule$Opt;->op:Ljava/lang/String;

    const-string v0, "base"

    .line 8
    invoke-virtual {p1, v0}, Lmega/config/XmlData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmega/config/util/SleepRule$Opt;->base:Ljava/lang/String;

    const-string/jumbo v0, "wakeUp"

    .line 9
    invoke-virtual {p1, v0}, Lmega/config/XmlData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lmega/config/util/SleepRule$Opt;->wakeUp:Z

    return-object p0
.end method
