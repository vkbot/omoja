.class public final Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePartOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field private final _buff:Lorg/apache/commons/io/output/j;

.field private final _part:Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePart;


# direct methods
.method public constructor <init>(Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePart;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePartOutputStream;->_part:Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePart;

    invoke-static {}, Landroidx/activity/result/a;->l()Lorg/apache/commons/io/output/j;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePartOutputStream;->_buff:Lorg/apache/commons/io/output/j;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    invoke-virtual {p0}, Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePartOutputStream;->flush()V

    return-void
.end method

.method public flush()V
    .locals 5

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePartOutputStream;->_buff:Lorg/apache/commons/io/output/j;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    iget-object v0, p0, Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePartOutputStream;->_part:Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePart;

    iget-object v1, v0, Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePart;->data:[B

    if-eqz v1, :cond_0

    array-length v0, v1

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePartOutputStream;->_buff:Lorg/apache/commons/io/output/j;

    invoke-virtual {v1}, Lorg/apache/commons/io/output/j;->size()I

    move-result v1

    add-int/2addr v1, v0

    new-array v0, v1, [B

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePartOutputStream;->_part:Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePart;

    iget-object v1, v1, Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePart;->data:[B

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePartOutputStream;->_buff:Lorg/apache/commons/io/output/j;

    invoke-virtual {v1}, Lorg/apache/commons/io/output/a;->toByteArrayImpl()[B

    move-result-object v1

    iget-object v2, p0, Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePartOutputStream;->_part:Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePart;

    iget-object v2, v2, Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePart;->data:[B

    array-length v2, v2

    array-length v4, v1

    invoke-static {v1, v3, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePartOutputStream;->_part:Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePart;

    iput-object v0, v1, Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePart;->data:[B

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePartOutputStream;->_buff:Lorg/apache/commons/io/output/j;

    invoke-virtual {v1}, Lorg/apache/commons/io/output/a;->toByteArrayImpl()[B

    move-result-object v1

    iput-object v1, v0, Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePart;->data:[B

    :goto_0
    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePartOutputStream;->_buff:Lorg/apache/commons/io/output/j;

    invoke-virtual {p0}, Lorg/apache/commons/io/output/a;->resetImpl()V

    return-void
.end method

.method public write(I)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePartOutputStream;->_buff:Lorg/apache/commons/io/output/j;

    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/commons/io/output/a;->writeImpl(I)V

    return-void
.end method

.method public write([B)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePartOutputStream;->_buff:Lorg/apache/commons/io/output/j;

    .line 2
    invoke-virtual {p0, p1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public write([BII)V
    .locals 0

    iget-object p0, p0, Lorg/apache/poi/openxml4j/opc/internal/MemoryPackagePartOutputStream;->_buff:Lorg/apache/commons/io/output/j;

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/io/output/j;->write([BII)V

    return-void
.end method
