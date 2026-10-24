.class public Lorg/apache/ftpserver/command/impl/listing/ListArgument;
.super Ljava/lang/Object;
.source "ListArgument.java"


# instance fields
.field private final file:Ljava/lang/String;

.field private final options:[C

.field private final pattern:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[C)V
    .locals 1
    .param p1, "file"    # Ljava/lang/String;
    .param p2, "pattern"    # Ljava/lang/String;
    .param p3, "options"    # [C

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/apache/ftpserver/command/impl/listing/ListArgument;->file:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lorg/apache/ftpserver/command/impl/listing/ListArgument;->pattern:Ljava/lang/String;

    .line 47
    if-nez p3, :cond_0

    .line 48
    const/4 v0, 0x0

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/apache/ftpserver/command/impl/listing/ListArgument;->options:[C

    goto :goto_0

    .line 50
    :cond_0
    invoke-virtual {p3}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    iput-object v0, p0, Lorg/apache/ftpserver/command/impl/listing/ListArgument;->options:[C

    .line 52
    :goto_0
    return-void
.end method


# virtual methods
.method public getFile()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/apache/ftpserver/command/impl/listing/ListArgument;->file:Ljava/lang/String;

    return-object v0
.end method

.method public getOptions()[C
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/apache/ftpserver/command/impl/listing/ListArgument;->options:[C

    invoke-virtual {v0}, [C->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    return-object v0
.end method

.method public getPattern()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/apache/ftpserver/command/impl/listing/ListArgument;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public hasOption(C)Z
    .locals 3
    .param p1, "option"    # C

    .line 80
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/apache/ftpserver/command/impl/listing/ListArgument;->options:[C

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 81
    aget-char v1, v1, v0

    if-ne p1, v1, :cond_0

    .line 82
    const/4 v1, 0x1

    return v1

    .line 80
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 86
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
