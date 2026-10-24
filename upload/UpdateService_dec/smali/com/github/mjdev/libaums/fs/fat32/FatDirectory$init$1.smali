.class final synthetic Lcom/github/mjdev/libaums/fs/fat32/FatDirectory$init$1;
.super Lkotlin/jvm/internal/MutablePropertyReference0;
.source "FatDirectory.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/github/mjdev/libaums/fs/fat32/FatDirectory;)V
    .locals 0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/MutablePropertyReference0;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/github/mjdev/libaums/fs/fat32/FatDirectory$init$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/github/mjdev/libaums/fs/fat32/FatDirectory;

    .line 130
    invoke-static {v0}, Lcom/github/mjdev/libaums/fs/fat32/FatDirectory;->access$getChain$p(Lcom/github/mjdev/libaums/fs/fat32/FatDirectory;)Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "chain"

    return-object v0
.end method

.method public getOwner()Lkotlin/reflect/KDeclarationContainer;
    .locals 1

    const-class v0, Lcom/github/mjdev/libaums/fs/fat32/FatDirectory;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 1

    const-string v0, "getChain()Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;"

    return-object v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    iget-object v0, p0, Lcom/github/mjdev/libaums/fs/fat32/FatDirectory$init$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/github/mjdev/libaums/fs/fat32/FatDirectory;

    .line 130
    move-object v1, p1

    check-cast v1, Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;

    invoke-static {v0, v1}, Lcom/github/mjdev/libaums/fs/fat32/FatDirectory;->access$setChain$p(Lcom/github/mjdev/libaums/fs/fat32/FatDirectory;Lcom/github/mjdev/libaums/fs/fat32/ClusterChain;)V

    return-void
.end method
