.class final Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;
.super Ljava/lang/Object;
.source "DefaultIoFilterChainBuilder.java"

# interfaces
.implements Lorg/apache/mina/core/filterchain/IoFilterChain$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "EntryImpl"
.end annotation


# instance fields
.field private volatile filter:Lorg/apache/mina/core/filterchain/IoFilter;

.field private final name:Ljava/lang/String;

.field final synthetic this$0:Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;


# direct methods
.method private constructor <init>(Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V
    .locals 1
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "filter"    # Lorg/apache/mina/core/filterchain/IoFilter;

    .line 613
    iput-object p1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;->this$0:Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 614
    if-eqz p2, :cond_1

    .line 618
    if-eqz p3, :cond_0

    .line 622
    iput-object p2, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;->name:Ljava/lang/String;

    .line 623
    iput-object p3, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;->filter:Lorg/apache/mina/core/filterchain/IoFilter;

    .line 624
    return-void

    .line 619
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "filter"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 615
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "name"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lorg/apache/mina/core/filterchain/IoFilter;
    .param p4, "x3"    # Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$1;

    .line 608
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;-><init>(Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V

    return-void
.end method

.method static synthetic access$100(Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;Lorg/apache/mina/core/filterchain/IoFilter;)V
    .locals 0
    .param p0, "x0"    # Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;
    .param p1, "x1"    # Lorg/apache/mina/core/filterchain/IoFilter;

    .line 608
    invoke-direct {p0, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;->setFilter(Lorg/apache/mina/core/filterchain/IoFilter;)V

    return-void
.end method

.method private setFilter(Lorg/apache/mina/core/filterchain/IoFilter;)V
    .locals 0
    .param p1, "filter"    # Lorg/apache/mina/core/filterchain/IoFilter;

    .line 643
    iput-object p1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;->filter:Lorg/apache/mina/core/filterchain/IoFilter;

    .line 644
    return-void
.end method


# virtual methods
.method public addAfter(Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filter"    # Lorg/apache/mina/core/filterchain/IoFilter;

    .line 664
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;->this$0:Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;

    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->addAfter(Ljava/lang/String;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V

    .line 665
    return-void
.end method

.method public addBefore(Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filter"    # Lorg/apache/mina/core/filterchain/IoFilter;

    .line 672
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;->this$0:Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;

    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->addBefore(Ljava/lang/String;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)V

    .line 673
    return-void
.end method

.method public getFilter()Lorg/apache/mina/core/filterchain/IoFilter;
    .locals 1

    .line 639
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;->filter:Lorg/apache/mina/core/filterchain/IoFilter;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 631
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNextFilter()Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;
    .locals 1

    .line 651
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 680
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;->this$0:Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;

    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->remove(Ljava/lang/String;)Lorg/apache/mina/core/filterchain/IoFilter;

    .line 681
    return-void
.end method

.method public replace(Lorg/apache/mina/core/filterchain/IoFilter;)V
    .locals 2
    .param p1, "newFilter"    # Lorg/apache/mina/core/filterchain/IoFilter;

    .line 688
    iget-object v0, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;->this$0:Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;

    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder;->replace(Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter;)Lorg/apache/mina/core/filterchain/IoFilter;

    .line 689
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/mina/core/filterchain/DefaultIoFilterChainBuilder$EntryImpl;->filter:Lorg/apache/mina/core/filterchain/IoFilter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
