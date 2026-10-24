.class Lmega/config/util/SleepRule$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmega/config/XmlSerializable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmega/config/util/SleepRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmega/config/XmlSerializable$Creator<",
        "Lmega/config/util/SleepRule;",
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
    invoke-virtual {p0, p1}, Lmega/config/util/SleepRule$1;->create(Lmega/config/XmlData;)Lmega/config/util/SleepRule;

    move-result-object p0

    return-object p0
.end method

.method public create(Lmega/config/XmlData;)Lmega/config/util/SleepRule;
    .locals 5

    .line 2
    new-instance p0, Lmega/config/util/SleepRule;

    invoke-direct {p0}, Lmega/config/util/SleepRule;-><init>()V

    const-string v0, "actions"

    .line 3
    invoke-virtual {p1, v0}, Lmega/config/XmlData;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 4
    array-length v1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 5
    :cond_0
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lmega/config/util/SleepRule;->actions:Ljava/util/List;

    const-string/jumbo v0, "triggers"

    .line 6
    invoke-virtual {p1, v0}, Lmega/config/XmlData;->getXmlDataArray(Ljava/lang/String;)[Lmega/config/XmlData;

    move-result-object p1

    .line 7
    array-length v0, p1

    if-nez v0, :cond_1

    return-object v2

    .line 8
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmega/config/util/SleepRule;->triggers:Ljava/util/List;

    .line 9
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v3, p1, v1

    .line 10
    sget-object v4, Lmega/config/util/SleepRule$Opt;->CREATOR:Lmega/config/XmlSerializable$Creator;

    invoke-interface {v4, v3}, Lmega/config/XmlSerializable$Creator;->create(Lmega/config/XmlData;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmega/config/util/SleepRule$Opt;

    if-eqz v3, :cond_2

    iget-object v4, p0, Lmega/config/util/SleepRule;->triggers:Ljava/util/List;

    .line 11
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lmega/config/util/SleepRule;->triggers:Ljava/util/List;

    .line 12
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    return-object v2

    :cond_4
    return-object p0
.end method
