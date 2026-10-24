.class public Lorg/apache/logging/log4j/message/StructuredDataMessage;
.super Lorg/apache/logging/log4j/message/MapMessage;
.source "StructuredDataMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/logging/log4j/message/MapMessage<",
        "Lorg/apache/logging/log4j/message/StructuredDataMessage;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lorg/apache/logging/log4j/message/AsynchronouslyFormattable;
.end annotation


# static fields
.field private static final HASHVAL:I = 0x1f

.field private static final MAX_LENGTH:I = 0x20

.field private static final serialVersionUID:J = 0x17a30ebde8b6a7f0L


# instance fields
.field private id:Lorg/apache/logging/log4j/message/StructuredDataId;

.field private final maxLength:I

.field private message:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 193
    invoke-direct {p0}, Lorg/apache/logging/log4j/message/MapMessage;-><init>()V

    .line 194
    const/16 v0, 0x20

    iput v0, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->maxLength:I

    .line 195
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "id",
            "msg",
            "type"
        }
    .end annotation

    .line 68
    const/16 v0, 0x20

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/logging/log4j/message/StructuredDataMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "maxLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "id",
            "msg",
            "type",
            "maxLength"
        }
    .end annotation

    .line 80
    invoke-direct {p0}, Lorg/apache/logging/log4j/message/MapMessage;-><init>()V

    .line 81
    new-instance v0, Lorg/apache/logging/log4j/message/StructuredDataId;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1, p4}, Lorg/apache/logging/log4j/message/StructuredDataId;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->id:Lorg/apache/logging/log4j/message/StructuredDataId;

    .line 82
    iput-object p2, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->message:Ljava/lang/String;

    .line 83
    iput-object p3, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->type:Ljava/lang/String;

    .line 84
    iput p4, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->maxLength:I

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "id",
            "msg",
            "type",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 97
    .local p4, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v5, 0x20

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/logging/log4j/message/StructuredDataMessage;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    .line 98
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p5, "maxLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "id",
            "msg",
            "type",
            "data",
            "maxLength"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 112
    .local p4, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p4}, Lorg/apache/logging/log4j/message/MapMessage;-><init>(Ljava/util/Map;)V

    .line 113
    new-instance v0, Lorg/apache/logging/log4j/message/StructuredDataId;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1, p5}, Lorg/apache/logging/log4j/message/StructuredDataId;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)V

    iput-object v0, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->id:Lorg/apache/logging/log4j/message/StructuredDataId;

    .line 114
    iput-object p2, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->message:Ljava/lang/String;

    .line 115
    iput-object p3, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->type:Ljava/lang/String;

    .line 116
    iput p5, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->maxLength:I

    .line 117
    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/message/StructuredDataId;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Lorg/apache/logging/log4j/message/StructuredDataId;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "id",
            "msg",
            "type"
        }
    .end annotation

    .line 126
    const/16 v0, 0x20

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/logging/log4j/message/StructuredDataMessage;-><init>(Lorg/apache/logging/log4j/message/StructuredDataId;Ljava/lang/String;Ljava/lang/String;I)V

    .line 127
    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/message/StructuredDataId;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "id"    # Lorg/apache/logging/log4j/message/StructuredDataId;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "maxLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "id",
            "msg",
            "type",
            "maxLength"
        }
    .end annotation

    .line 137
    invoke-direct {p0}, Lorg/apache/logging/log4j/message/MapMessage;-><init>()V

    .line 138
    iput-object p1, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->id:Lorg/apache/logging/log4j/message/StructuredDataId;

    .line 139
    iput-object p2, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->message:Ljava/lang/String;

    .line 140
    iput-object p3, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->type:Ljava/lang/String;

    .line 141
    iput p4, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->maxLength:I

    .line 142
    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/message/StructuredDataId;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p1, "id"    # Lorg/apache/logging/log4j/message/StructuredDataId;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "id",
            "msg",
            "type",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/message/StructuredDataId;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 154
    .local p4, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v5, 0x20

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/logging/log4j/message/StructuredDataMessage;-><init>(Lorg/apache/logging/log4j/message/StructuredDataId;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    .line 155
    return-void
.end method

.method public constructor <init>(Lorg/apache/logging/log4j/message/StructuredDataId;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V
    .locals 0
    .param p1, "id"    # Lorg/apache/logging/log4j/message/StructuredDataId;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p5, "maxLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "id",
            "msg",
            "type",
            "data",
            "maxLength"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/message/StructuredDataId;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 169
    .local p4, "data":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p4}, Lorg/apache/logging/log4j/message/MapMessage;-><init>(Ljava/util/Map;)V

    .line 170
    iput-object p1, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->id:Lorg/apache/logging/log4j/message/StructuredDataId;

    .line 171
    iput-object p2, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->message:Ljava/lang/String;

    .line 172
    iput-object p3, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->type:Ljava/lang/String;

    .line 173
    iput p5, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->maxLength:I

    .line 174
    return-void
.end method

.method private constructor <init>(Lorg/apache/logging/log4j/message/StructuredDataMessage;Ljava/util/Map;)V
    .locals 1
    .param p1, "msg"    # Lorg/apache/logging/log4j/message/StructuredDataMessage;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "msg",
            "map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/message/StructuredDataMessage;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 183
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lorg/apache/logging/log4j/message/MapMessage;-><init>(Ljava/util/Map;)V

    .line 184
    iget-object v0, p1, Lorg/apache/logging/log4j/message/StructuredDataMessage;->id:Lorg/apache/logging/log4j/message/StructuredDataId;

    iput-object v0, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->id:Lorg/apache/logging/log4j/message/StructuredDataId;

    .line 185
    iget-object v0, p1, Lorg/apache/logging/log4j/message/StructuredDataMessage;->message:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->message:Ljava/lang/String;

    .line 186
    iget-object v0, p1, Lorg/apache/logging/log4j/message/StructuredDataMessage;->type:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->type:Ljava/lang/String;

    .line 187
    const/16 v0, 0x20

    iput v0, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->maxLength:I

    .line 188
    return-void
.end method

.method private asXml(Lorg/apache/logging/log4j/message/StructuredDataId;Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "structuredDataId"    # Lorg/apache/logging/log4j/message/StructuredDataId;
    .param p2, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "structuredDataId",
            "sb"
        }
    .end annotation

    .line 359
    const-string v0, "<StructuredData>\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    const-string v0, "<type>"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->type:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</type>\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    const-string v0, "<id>"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "</id>\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    invoke-super {p0, p2}, Lorg/apache/logging/log4j/message/MapMessage;->asXml(Ljava/lang/StringBuilder;)V

    .line 363
    const-string v0, "\n</StructuredData>\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    return-void
.end method

.method private getFormat([Ljava/lang/String;)Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;
    .locals 3
    .param p1, "formats"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "formats"
        }
    .end annotation

    .line 390
    if-eqz p1, :cond_3

    array-length v0, p1

    if-lez v0, :cond_3

    .line 391
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 392
    aget-object v1, p1, v0

    .line 393
    .local v1, "format":Ljava/lang/String;
    sget-object v2, Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;->XML:Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;

    invoke-virtual {v2}, Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 394
    sget-object v2, Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;->XML:Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;

    return-object v2

    .line 395
    :cond_0
    sget-object v2, Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;->FULL:Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;

    invoke-virtual {v2}, Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 396
    sget-object v2, Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;->FULL:Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;

    return-object v2

    .line 391
    .end local v1    # "format":Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 399
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return-object v0

    .line 401
    :cond_3
    sget-object v0, Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;->FULL:Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;

    return-object v0
.end method


# virtual methods
.method public asString()Ljava/lang/String;
    .locals 2

    .line 280
    sget-object v0, Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;->FULL:Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/logging/log4j/message/StructuredDataMessage;->asString(Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;Lorg/apache/logging/log4j/message/StructuredDataId;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public asString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "format"
        }
    .end annotation

    .line 293
    :try_start_0
    const-class v0, Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;

    invoke-static {v0, p1}, Lorg/apache/logging/log4j/util/EnglishEnums;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/logging/log4j/message/StructuredDataMessage;->asString(Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;Lorg/apache/logging/log4j/message/StructuredDataId;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0}, Lorg/apache/logging/log4j/message/StructuredDataMessage;->asString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final asString(Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;Lorg/apache/logging/log4j/message/StructuredDataId;)Ljava/lang/String;
    .locals 2
    .param p1, "format"    # Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;
    .param p2, "structuredDataId"    # Lorg/apache/logging/log4j/message/StructuredDataId;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "format",
            "structuredDataId"
        }
    .end annotation

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 310
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/logging/log4j/message/StructuredDataMessage;->asString(Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;Lorg/apache/logging/log4j/message/StructuredDataId;Ljava/lang/StringBuilder;)V

    .line 311
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final asString(Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;Lorg/apache/logging/log4j/message/StructuredDataId;Ljava/lang/StringBuilder;)V
    .locals 4
    .param p1, "format"    # Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;
    .param p2, "structuredDataId"    # Lorg/apache/logging/log4j/message/StructuredDataId;
    .param p3, "sb"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "format",
            "structuredDataId",
            "sb"
        }
    .end annotation

    .line 324
    sget-object v0, Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;->FULL:Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;

    invoke-virtual {v0, p1}, Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 325
    .local v0, "full":Z
    const/16 v1, 0x20

    if-eqz v0, :cond_1

    .line 326
    invoke-virtual {p0}, Lorg/apache/logging/log4j/message/StructuredDataMessage;->getType()Ljava/lang/String;

    move-result-object v2

    .line 327
    .local v2, "myType":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 328
    return-void

    .line 330
    :cond_0
    invoke-virtual {p0}, Lorg/apache/logging/log4j/message/StructuredDataMessage;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 332
    .end local v2    # "myType":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lorg/apache/logging/log4j/message/StructuredDataMessage;->getId()Lorg/apache/logging/log4j/message/StructuredDataId;

    move-result-object v2

    .line 333
    .local v2, "sdId":Lorg/apache/logging/log4j/message/StructuredDataId;
    if-eqz v2, :cond_2

    .line 334
    invoke-virtual {v2, p2}, Lorg/apache/logging/log4j/message/StructuredDataId;->makeId(Lorg/apache/logging/log4j/message/StructuredDataId;)Lorg/apache/logging/log4j/message/StructuredDataId;

    move-result-object v2

    goto :goto_0

    .line 336
    :cond_2
    move-object v2, p2

    .line 338
    :goto_0
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lorg/apache/logging/log4j/message/StructuredDataId;->getName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    goto :goto_1

    .line 341
    :cond_3
    sget-object v3, Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;->XML:Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;

    invoke-virtual {v3, p1}, Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 342
    invoke-direct {p0, v2, p3}, Lorg/apache/logging/log4j/message/StructuredDataMessage;->asXml(Lorg/apache/logging/log4j/message/StructuredDataId;Ljava/lang/StringBuilder;)V

    .line 343
    return-void

    .line 345
    :cond_4
    const/16 v3, 0x5b

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 346
    invoke-static {p3, v2}, Lorg/apache/logging/log4j/util/StringBuilders;->appendValue(Ljava/lang/StringBuilder;Ljava/lang/Object;)V

    .line 347
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 348
    invoke-virtual {p0, p3}, Lorg/apache/logging/log4j/message/StructuredDataMessage;->appendMap(Ljava/lang/StringBuilder;)V

    .line 349
    const/16 v3, 0x5d

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 350
    if-eqz v0, :cond_5

    .line 351
    invoke-virtual {p0}, Lorg/apache/logging/log4j/message/StructuredDataMessage;->getFormat()Ljava/lang/String;

    move-result-object v3

    .line 352
    .local v3, "msg":Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 353
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    .end local v3    # "msg":Ljava/lang/String;
    :cond_5
    return-void

    .line 339
    :cond_6
    :goto_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "o"
        }
    .end annotation

    .line 417
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 418
    return v0

    .line 420
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_3

    .line 424
    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/apache/logging/log4j/message/StructuredDataMessage;

    .line 426
    .local v2, "that":Lorg/apache/logging/log4j/message/StructuredDataMessage;
    invoke-super {p0, p1}, Lorg/apache/logging/log4j/message/MapMessage;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 427
    return v1

    .line 429
    :cond_2
    iget-object v3, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->type:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v4, v2, Lorg/apache/logging/log4j/message/StructuredDataMessage;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_3
    iget-object v3, v2, Lorg/apache/logging/log4j/message/StructuredDataMessage;->type:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 430
    :goto_0
    return v1

    .line 432
    :cond_4
    iget-object v3, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->id:Lorg/apache/logging/log4j/message/StructuredDataId;

    if-eqz v3, :cond_5

    iget-object v4, v2, Lorg/apache/logging/log4j/message/StructuredDataMessage;->id:Lorg/apache/logging/log4j/message/StructuredDataId;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_1

    :cond_5
    iget-object v3, v2, Lorg/apache/logging/log4j/message/StructuredDataMessage;->id:Lorg/apache/logging/log4j/message/StructuredDataId;

    if-eqz v3, :cond_6

    .line 433
    :goto_1
    return v1

    .line 435
    :cond_6
    iget-object v3, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->message:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v4, v2, Lorg/apache/logging/log4j/message/StructuredDataMessage;->message:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_2

    :cond_7
    iget-object v3, v2, Lorg/apache/logging/log4j/message/StructuredDataMessage;->message:Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 436
    :goto_2
    return v1

    .line 439
    :cond_8
    return v0

    .line 421
    .end local v2    # "that":Lorg/apache/logging/log4j/message/StructuredDataMessage;
    :cond_9
    :goto_3
    return v1
.end method

.method public formatTo(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "buffer"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "buffer"
        }
    .end annotation

    .line 252
    sget-object v0, Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;->FULL:Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/logging/log4j/message/StructuredDataMessage;->asString(Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;Lorg/apache/logging/log4j/message/StructuredDataId;Ljava/lang/StringBuilder;)V

    .line 253
    return-void
.end method

.method public formatTo([Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "formats"    # [Ljava/lang/String;
    .param p2, "buffer"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "formats",
            "buffer"
        }
    .end annotation

    .line 257
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/message/StructuredDataMessage;->getFormat([Ljava/lang/String;)Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p2}, Lorg/apache/logging/log4j/message/StructuredDataMessage;->asString(Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;Lorg/apache/logging/log4j/message/StructuredDataId;Ljava/lang/StringBuilder;)V

    .line 258
    return-void
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 266
    iget-object v0, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getFormats()[Ljava/lang/String;
    .locals 8

    .line 203
    invoke-static {}, Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;->values()[Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    .line 204
    .local v0, "formats":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 205
    .local v1, "i":I
    invoke-static {}, Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;->values()[Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 206
    .local v5, "format":Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;
    add-int/lit8 v6, v1, 0x1

    .end local v1    # "i":I
    .local v6, "i":I
    invoke-virtual {v5}, Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v1

    .line 205
    .end local v5    # "format":Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;
    add-int/lit8 v4, v4, 0x1

    move v1, v6

    goto :goto_0

    .line 208
    .end local v6    # "i":I
    .restart local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public getFormattedMessage()Ljava/lang/String;
    .locals 2

    .line 372
    sget-object v0, Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;->FULL:Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/logging/log4j/message/StructuredDataMessage;->asString(Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;Lorg/apache/logging/log4j/message/StructuredDataId;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFormattedMessage([Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "formats"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "formats"
        }
    .end annotation

    .line 386
    invoke-direct {p0, p1}, Lorg/apache/logging/log4j/message/StructuredDataMessage;->getFormat([Ljava/lang/String;)Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/apache/logging/log4j/message/StructuredDataMessage;->asString(Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;Lorg/apache/logging/log4j/message/StructuredDataId;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Lorg/apache/logging/log4j/message/StructuredDataId;
    .locals 1

    .line 216
    iget-object v0, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->id:Lorg/apache/logging/log4j/message/StructuredDataId;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 240
    iget-object v0, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 444
    invoke-super {p0}, Lorg/apache/logging/log4j/message/MapMessage;->hashCode()I

    move-result v0

    .line 445
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->type:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    add-int/2addr v1, v2

    .line 446
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->id:Lorg/apache/logging/log4j/message/StructuredDataId;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    add-int/2addr v0, v2

    .line 447
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->message:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    :cond_2
    add-int/2addr v1, v3

    .line 448
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public bridge synthetic newInstance(Ljava/util/Map;)Lorg/apache/logging/log4j/message/MapMessage;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "map"
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/message/StructuredDataMessage;->newInstance(Ljava/util/Map;)Lorg/apache/logging/log4j/message/StructuredDataMessage;

    move-result-object p1

    return-object p1
.end method

.method public newInstance(Ljava/util/Map;)Lorg/apache/logging/log4j/message/StructuredDataMessage;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "map"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/apache/logging/log4j/message/StructuredDataMessage;"
        }
    .end annotation

    .line 412
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Lorg/apache/logging/log4j/message/StructuredDataMessage;

    invoke-direct {v0, p0, p1}, Lorg/apache/logging/log4j/message/StructuredDataMessage;-><init>(Lorg/apache/logging/log4j/message/StructuredDataMessage;Ljava/util/Map;)V

    return-object v0
.end method

.method protected setId(Ljava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "id"
        }
    .end annotation

    .line 224
    new-instance v0, Lorg/apache/logging/log4j/message/StructuredDataId;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Lorg/apache/logging/log4j/message/StructuredDataId;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->id:Lorg/apache/logging/log4j/message/StructuredDataId;

    .line 225
    return-void
.end method

.method protected setId(Lorg/apache/logging/log4j/message/StructuredDataId;)V
    .locals 0
    .param p1, "id"    # Lorg/apache/logging/log4j/message/StructuredDataId;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "id"
        }
    .end annotation

    .line 232
    iput-object p1, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->id:Lorg/apache/logging/log4j/message/StructuredDataId;

    .line 233
    return-void
.end method

.method protected setMessageFormat(Ljava/lang/String;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "msg"
        }
    .end annotation

    .line 270
    iput-object p1, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->message:Ljava/lang/String;

    .line 271
    return-void
.end method

.method protected setType(Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "type"
        }
    .end annotation

    .line 244
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_0

    .line 247
    iput-object p1, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->type:Ljava/lang/String;

    .line 248
    return-void

    .line 245
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "structured data type exceeds maximum length of 32 characters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 406
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lorg/apache/logging/log4j/message/StructuredDataMessage;->asString(Lorg/apache/logging/log4j/message/StructuredDataMessage$Format;Lorg/apache/logging/log4j/message/StructuredDataId;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected validate(Ljava/lang/String;B)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 461
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/message/StructuredDataMessage;->validateKey(Ljava/lang/String;)V

    .line 462
    return-void
.end method

.method protected validate(Ljava/lang/String;C)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 469
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/message/StructuredDataMessage;->validateKey(Ljava/lang/String;)V

    .line 470
    return-void
.end method

.method protected validate(Ljava/lang/String;D)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 477
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/message/StructuredDataMessage;->validateKey(Ljava/lang/String;)V

    .line 478
    return-void
.end method

.method protected validate(Ljava/lang/String;F)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 485
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/message/StructuredDataMessage;->validateKey(Ljava/lang/String;)V

    .line 486
    return-void
.end method

.method protected validate(Ljava/lang/String;I)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 493
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/message/StructuredDataMessage;->validateKey(Ljava/lang/String;)V

    .line 494
    return-void
.end method

.method protected validate(Ljava/lang/String;J)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 501
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/message/StructuredDataMessage;->validateKey(Ljava/lang/String;)V

    .line 502
    return-void
.end method

.method protected validate(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 509
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/message/StructuredDataMessage;->validateKey(Ljava/lang/String;)V

    .line 510
    return-void
.end method

.method protected validate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 522
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/message/StructuredDataMessage;->validateKey(Ljava/lang/String;)V

    .line 523
    return-void
.end method

.method protected validate(Ljava/lang/String;S)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 517
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/message/StructuredDataMessage;->validateKey(Ljava/lang/String;)V

    .line 518
    return-void
.end method

.method protected validate(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 453
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/message/StructuredDataMessage;->validateKey(Ljava/lang/String;)V

    .line 454
    return-void
.end method

.method protected validateKey(Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "key"
        }
    .end annotation

    .line 526
    iget v0, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->maxLength:I

    if-lez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->maxLength:I

    if-gt v0, v1, :cond_0

    goto :goto_0

    .line 527
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Structured data keys are limited to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lorg/apache/logging/log4j/message/StructuredDataMessage;->maxLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " characters. key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 530
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 531
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 532
    .local v1, "c":C
    const/16 v2, 0x21

    if-lt v1, v2, :cond_2

    const/16 v2, 0x7e

    if-gt v1, v2, :cond_2

    const/16 v2, 0x3d

    if-eq v1, v2, :cond_2

    const/16 v2, 0x5d

    if-eq v1, v2, :cond_2

    const/16 v2, 0x22

    if-eq v1, v2, :cond_2

    .line 530
    .end local v1    # "c":C
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 533
    .restart local v1    # "c":C
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Structured data keys must contain printable US ASCII charactersand may not contain a space, =, ], or \""

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 537
    .end local v0    # "i":I
    .end local v1    # "c":C
    :cond_3
    return-void
.end method
