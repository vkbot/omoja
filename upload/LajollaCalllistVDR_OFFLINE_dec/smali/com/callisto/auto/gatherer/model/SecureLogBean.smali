.class public Lcom/callisto/auto/gatherer/model/SecureLogBean;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private EventCode:I

.field private EventType:I

.field private source:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/callisto/auto/gatherer/model/SecureLogBean;->source:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/callisto/auto/gatherer/model/SecureLogBean;->EventCode:I

    return-void
.end method


# virtual methods
.method public getEventCode()I
    .locals 0

    iget p0, p0, Lcom/callisto/auto/gatherer/model/SecureLogBean;->EventCode:I

    return p0
.end method

.method public getEventType()I
    .locals 0

    iget p0, p0, Lcom/callisto/auto/gatherer/model/SecureLogBean;->EventType:I

    return p0
.end method

.method public getSource()I
    .locals 0

    iget p0, p0, Lcom/callisto/auto/gatherer/model/SecureLogBean;->source:I

    return p0
.end method

.method public setEventCode(I)V
    .locals 0

    iput p1, p0, Lcom/callisto/auto/gatherer/model/SecureLogBean;->EventCode:I

    return-void
.end method

.method public setEventType(I)V
    .locals 0

    iput p1, p0, Lcom/callisto/auto/gatherer/model/SecureLogBean;->EventType:I

    return-void
.end method

.method public setSource(I)V
    .locals 0

    iput p1, p0, Lcom/callisto/auto/gatherer/model/SecureLogBean;->source:I

    return-void
.end method

.method public toByteArray()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget v2, p0, Lcom/callisto/auto/gatherer/model/SecureLogBean;->source:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/callisto/auto/gatherer/model/SecureLogBean;->EventType:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget p0, p0, Lcom/callisto/auto/gatherer/model/SecureLogBean;->EventCode:I

    invoke-virtual {v1, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p0, v2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
