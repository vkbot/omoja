.class Lorg/apache/logging/log4j/util/Unbox$State;
.super Ljava/lang/Object;
.source "Unbox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/util/Unbox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "State"
.end annotation


# instance fields
.field private current:I

.field private final ringBuffer:[Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>()V
    .locals 4

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    invoke-static {}, Lorg/apache/logging/log4j/util/Unbox;->access$000()I

    move-result v0

    new-array v0, v0, [Ljava/lang/StringBuilder;

    iput-object v0, p0, Lorg/apache/logging/log4j/util/Unbox$State;->ringBuffer:[Ljava/lang/StringBuilder;

    .line 103
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/logging/log4j/util/Unbox$State;->ringBuffer:[Ljava/lang/StringBuilder;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x15

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    aput-object v2, v1, v0

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public getStringBuilder()Ljava/lang/StringBuilder;
    .locals 4

    .line 109
    iget-object v0, p0, Lorg/apache/logging/log4j/util/Unbox$State;->ringBuffer:[Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/apache/logging/log4j/util/Unbox;->access$100()I

    move-result v1

    iget v2, p0, Lorg/apache/logging/log4j/util/Unbox$State;->current:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/apache/logging/log4j/util/Unbox$State;->current:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    .line 110
    .local v0, "result":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 111
    return-object v0
.end method

.method public isBoxedPrimitive(Ljava/lang/StringBuilder;)Z
    .locals 3
    .param p1, "text"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "text"
        }
    .end annotation

    .line 115
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/logging/log4j/util/Unbox$State;->ringBuffer:[Ljava/lang/StringBuilder;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 116
    aget-object v1, v1, v0

    if-ne p1, v1, :cond_0

    .line 117
    const/4 v1, 0x1

    return v1

    .line 115
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
