.class final Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;
.super Ljava/lang/Object;
.source "DefaultIoFilterChain.java"

# interfaces
.implements Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EntryImpl"
.end annotation


# instance fields
.field private filter:Lorg/apache/mina/core/filterchain/IoFilter;

.field private final name:Ljava/lang/String;

.field private nextEntry:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

.field private final nextFilter:Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

.field private prevEntry:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

.field final synthetic this$0:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;


# direct methods
.method private constructor <init>(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V
    .locals 1
    .param p2, "prevEntry"    # Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;
    .param p3, "nextEntry"    # Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "filter"    # Lorg/apache/mina/core/filterchain/IoFilter;

    .line 1054
    iput-object p1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->this$0:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1055
    if-eqz p5, :cond_1

    .line 1059
    if-eqz p4, :cond_0

    .line 1063
    iput-object p2, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->prevEntry:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    .line 1064
    iput-object p3, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->nextEntry:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    .line 1065
    iput-object p4, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->name:Ljava/lang/String;

    .line 1066
    iput-object p5, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->filter:Lorg/apache/mina/core/filterchain/IoFilter;

    .line 1067
    new-instance v0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl$1;

    invoke-direct {v0, p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl$1;-><init>(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;)V

    iput-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->nextFilter:Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    .line 1175
    return-void

    .line 1060
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "name"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1056
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "filter"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;
    .param p2, "x1"    # Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;
    .param p3, "x2"    # Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;
    .param p4, "x3"    # Ljava/lang/String;
    .param p5, "x4"    # Lorg/apache/mina/core/filterchain/IoFilter;
    .param p6, "x5"    # Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$1;

    .line 1043
    invoke-direct/range {p0 .. p5}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;-><init>(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V

    return-void
.end method

.method static synthetic access$300(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    .line 1043
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->nextEntry:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    return-object v0
.end method

.method static synthetic access$302(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;
    .param p1, "x1"    # Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    .line 1043
    iput-object p1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->nextEntry:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    return-object p1
.end method

.method static synthetic access$400(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    .line 1043
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->prevEntry:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    return-object v0
.end method

.method static synthetic access$402(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;
    .param p1, "x1"    # Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    .line 1043
    iput-object p1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->prevEntry:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    return-object p1
.end method

.method static synthetic access$500(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;Lorg/apache/mina/core/filterchain/IoFilter;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;
    .param p1, "x1"    # Lorg/apache/mina/core/filterchain/IoFilter;

    .line 1043
    invoke-direct {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->setFilter(Lorg/apache/mina/core/filterchain/IoFilter;)V

    return-void
.end method

.method static synthetic access$600(Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    .line 1043
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method private setFilter(Lorg/apache/mina/core/filterchain/IoFilter;)V
    .locals 2
    .param p1, "filter"    # Lorg/apache/mina/core/filterchain/IoFilter;

    .line 1194
    if-eqz p1, :cond_0

    .line 1198
    iput-object p1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->filter:Lorg/apache/mina/core/filterchain/IoFilter;

    .line 1199
    return-void

    .line 1195
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "filter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addAfter(Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filter"    # Lorg/apache/mina/core/filterchain/IoFilter;

    .line 1248
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->this$0:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;

    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->addAfter(Ljava/lang/String;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V

    .line 1249
    return-void
.end method

.method public addBefore(Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filter"    # Lorg/apache/mina/core/filterchain/IoFilter;

    .line 1256
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->this$0:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;

    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->addBefore(Ljava/lang/String;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V

    .line 1257
    return-void
.end method

.method public getFilter()Lorg/apache/mina/core/filterchain/IoFilter;
    .locals 1

    .line 1190
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->filter:Lorg/apache/mina/core/filterchain/IoFilter;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1182
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .locals 1

    .line 1206
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->nextFilter:Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 1264
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->this$0:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;

    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->remove(Ljava/lang/String;)Lorg/apache/mina/core/filterchain/IoFilter;

    .line 1265
    return-void
.end method

.method public replace(Lorg/apache/mina/core/filterchain/IoFilter;)V
    .locals 2
    .param p1, "newFilter"    # Lorg/apache/mina/core/filterchain/IoFilter;

    .line 1272
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->this$0:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;

    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain;->replace(Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)Lorg/apache/mina/core/filterchain/IoFilter;

    .line 1273
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1214
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1217
    const-string v1, ", prev: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1219
    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->prevEntry:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    const/16 v2, 0x3a

    const-string v3, "null"

    if-eqz v1, :cond_0

    .line 1220
    iget-object v1, v1, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1221
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1222
    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->prevEntry:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    invoke-virtual {v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1224
    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1228
    :goto_0
    const-string v1, "\', next: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1230
    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->nextEntry:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    if-eqz v1, :cond_1

    .line 1231
    iget-object v1, v1, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1232
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1233
    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->nextEntry:Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;

    invoke-virtual {v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChain$EntryImpl;->getFilter()Lorg/apache/mina/core/filterchain/IoFilter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1235
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1238
    :goto_1
    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1240
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
