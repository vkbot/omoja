.class public Lorg/apache/logging/log4j/message/StructuredDataId;
.super Ljava/lang/Object;
.source "StructuredDataId.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Lorg/apache/logging/log4j/util/StringBuilderFormattable;


# static fields
.field private static final AT_SIGN:Ljava/lang/String; = "@"

.field private static final MAX_LENGTH:I = 0x20

.field public static final META:Lorg/apache/logging/log4j/message/StructuredDataId;

.field public static final ORIGIN:Lorg/apache/logging/log4j/message/StructuredDataId;

.field public static final RESERVED:I = -0x1

.field public static final TIME_QUALITY:Lorg/apache/logging/log4j/message/StructuredDataId;

.field private static final serialVersionUID:J = 0x7d573562da0e3386L


# instance fields
.field private final enterpriseNumber:I

.field private final name:Ljava/lang/String;

.field private final optional:[Ljava/lang/String;

.field private final required:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 32
    new-instance v0, Lorg/apache/logging/log4j/message/StructuredDataId;

    const-string v1, "tzKnown"

    const-string v2, "isSynced"

    const-string v3, "syncAccuracy"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "timeQuality"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lorg/apache/logging/log4j/message/StructuredDataId;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/message/StructuredDataId;->TIME_QUALITY:Lorg/apache/logging/log4j/message/StructuredDataId;

    .line 38
    new-instance v0, Lorg/apache/logging/log4j/message/StructuredDataId;

    const-string v1, "ip"

    const-string v2, "enterpriseId"

    const-string v4, "software"

    const-string v5, "swVersion"

    filled-new-array {v1, v2, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "origin"

    invoke-direct {v0, v2, v3, v1}, Lorg/apache/logging/log4j/message/StructuredDataId;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/message/StructuredDataId;->ORIGIN:Lorg/apache/logging/log4j/message/StructuredDataId;

    .line 44
    new-instance v0, Lorg/apache/logging/log4j/message/StructuredDataId;

    const-string v1, "sequenceId"

    const-string v2, "sysUpTime"

    const-string v4, "language"

    filled-new-array {v1, v2, v4}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "meta"

    invoke-direct {v0, v2, v3, v1}, Lorg/apache/logging/log4j/message/StructuredDataId;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lorg/apache/logging/log4j/message/StructuredDataId;->META:Lorg/apache/logging/log4j/message/StructuredDataId;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "name"
        }
    .end annotation

    .line 67
    const/4 v0, 0x0

    const/16 v1, 0x20

    invoke-direct {p0, p1, v0, v0, v1}, Lorg/apache/logging/log4j/message/StructuredDataId;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)V

    .line 68
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "maxLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "name",
            "maxLength"
        }
    .end annotation

    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0, p2}, Lorg/apache/logging/log4j/message/StructuredDataId;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)V

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "enterpriseNumber"    # I
    .param p3, "required"    # [Ljava/lang/String;
    .param p4, "optional"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "enterpriseNumber",
            "required",
            "optional"
        }
    .end annotation

    .line 132
    const/16 v5, 0x20

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/logging/log4j/message/StructuredDataId;-><init>(Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;I)V

    .line 133
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "enterpriseNumber"    # I
    .param p3, "required"    # [Ljava/lang/String;
    .param p4, "optional"    # [Ljava/lang/String;
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
            "name",
            "enterpriseNumber",
            "required",
            "optional",
            "maxLength"
        }
    .end annotation

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    if-eqz p1, :cond_4

    .line 150
    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 153
    if-lez p2, :cond_2

    .line 156
    iput-object p1, p0, Lorg/apache/logging/log4j/message/StructuredDataId;->name:Ljava/lang/String;

    .line 157
    iput p2, p0, Lorg/apache/logging/log4j/message/StructuredDataId;->enterpriseNumber:I

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "id":Ljava/lang/String;
    if-lez p5, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-gt v1, p5, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Length of id exceeds maximum of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " characters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 162
    :cond_1
    :goto_0
    iput-object p3, p0, Lorg/apache/logging/log4j/message/StructuredDataId;->required:[Ljava/lang/String;

    .line 163
    iput-object p4, p0, Lorg/apache/logging/log4j/message/StructuredDataId;->optional:[Ljava/lang/String;

    .line 164
    return-void

    .line 154
    .end local v0    # "id":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No enterprise number was supplied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Structured id name cannot contain an "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/apache/logging/log4j/util/Strings;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 148
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No structured id name was supplied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "required"    # [Ljava/lang/String;
    .param p3, "optional"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "name",
            "required",
            "optional"
        }
    .end annotation

    .line 87
    const/16 v0, 0x20

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/logging/log4j/message/StructuredDataId;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)V

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "required"    # [Ljava/lang/String;
    .param p3, "optional"    # [Ljava/lang/String;
    .param p4, "maxLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x0
        }
        names = {
            "name",
            "required",
            "optional",
            "maxLength"
        }
    .end annotation

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, -0x1

    .line 100
    .local v0, "index":I
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 101
    if-gtz p4, :cond_0

    .line 102
    const/16 p4, 0x20

    .line 104
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-gt v2, p4, :cond_1

    .line 108
    const-string v2, "@"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 105
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    .line 106
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v3, v4

    .line 105
    const-string v1, "Length of id %s exceeds maximum of %d characters"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 111
    :cond_2
    :goto_0
    if-lez v0, :cond_3

    .line 112
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/logging/log4j/message/StructuredDataId;->name:Ljava/lang/String;

    .line 113
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lorg/apache/logging/log4j/message/StructuredDataId;->enterpriseNumber:I

    goto :goto_1

    .line 115
    :cond_3
    iput-object p1, p0, Lorg/apache/logging/log4j/message/StructuredDataId;->name:Ljava/lang/String;

    .line 116
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/logging/log4j/message/StructuredDataId;->enterpriseNumber:I

    .line 118
    :goto_1
    iput-object p2, p0, Lorg/apache/logging/log4j/message/StructuredDataId;->required:[Ljava/lang/String;

    .line 119
    iput-object p3, p0, Lorg/apache/logging/log4j/message/StructuredDataId;->optional:[Ljava/lang/String;

    .line 120
    return-void
.end method


# virtual methods
.method public formatTo(Ljava/lang/StringBuilder;)V
    .locals 1
    .param p1, "buffer"    # Ljava/lang/StringBuilder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "buffer"
        }
    .end annotation

    .line 260
    invoke-virtual {p0}, Lorg/apache/logging/log4j/message/StructuredDataId;->isReserved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lorg/apache/logging/log4j/message/StructuredDataId;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 263
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/message/StructuredDataId;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lorg/apache/logging/log4j/message/StructuredDataId;->enterpriseNumber:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 265
    :goto_0
    return-void
.end method

.method public getEnterpriseNumber()I
    .locals 1

    .line 239
    iget v0, p0, Lorg/apache/logging/log4j/message/StructuredDataId;->enterpriseNumber:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 230
    iget-object v0, p0, Lorg/apache/logging/log4j/message/StructuredDataId;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOptional()[Ljava/lang/String;
    .locals 1

    .line 221
    iget-object v0, p0, Lorg/apache/logging/log4j/message/StructuredDataId;->optional:[Ljava/lang/String;

    return-object v0
.end method

.method public getRequired()[Ljava/lang/String;
    .locals 1

    .line 212
    iget-object v0, p0, Lorg/apache/logging/log4j/message/StructuredDataId;->required:[Ljava/lang/String;

    return-object v0
.end method

.method public isReserved()Z
    .locals 1

    .line 248
    iget v0, p0, Lorg/apache/logging/log4j/message/StructuredDataId;->enterpriseNumber:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public makeId(Ljava/lang/String;I)Lorg/apache/logging/log4j/message/StructuredDataId;
    .locals 4
    .param p1, "defaultId"    # Ljava/lang/String;
    .param p2, "anEnterpriseNumber"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "defaultId",
            "anEnterpriseNumber"
        }
    .end annotation

    .line 190
    if-gtz p2, :cond_0

    .line 191
    return-object p0

    .line 193
    :cond_0
    iget-object v0, p0, Lorg/apache/logging/log4j/message/StructuredDataId;->name:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lorg/apache/logging/log4j/message/StructuredDataId;->name:Ljava/lang/String;

    .line 195
    .local v0, "id":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/logging/log4j/message/StructuredDataId;->required:[Ljava/lang/String;

    .line 196
    .local v1, "req":[Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/logging/log4j/message/StructuredDataId;->optional:[Ljava/lang/String;

    .local v2, "opt":[Ljava/lang/String;
    goto :goto_0

    .line 198
    .end local v0    # "id":Ljava/lang/String;
    .end local v1    # "req":[Ljava/lang/String;
    .end local v2    # "opt":[Ljava/lang/String;
    :cond_1
    move-object v0, p1

    .line 199
    .restart local v0    # "id":Ljava/lang/String;
    const/4 v1, 0x0

    .line 200
    .restart local v1    # "req":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 203
    .restart local v2    # "opt":[Ljava/lang/String;
    :goto_0
    new-instance v3, Lorg/apache/logging/log4j/message/StructuredDataId;

    invoke-direct {v3, v0, p2, v1, v2}, Lorg/apache/logging/log4j/message/StructuredDataId;-><init>(Ljava/lang/String;I[Ljava/lang/String;[Ljava/lang/String;)V

    return-object v3
.end method

.method public makeId(Lorg/apache/logging/log4j/message/StructuredDataId;)Lorg/apache/logging/log4j/message/StructuredDataId;
    .locals 2
    .param p1, "id"    # Lorg/apache/logging/log4j/message/StructuredDataId;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "id"
        }
    .end annotation

    .line 173
    if-nez p1, :cond_0

    .line 174
    return-object p0

    .line 176
    :cond_0
    invoke-virtual {p1}, Lorg/apache/logging/log4j/message/StructuredDataId;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/logging/log4j/message/StructuredDataId;->getEnterpriseNumber()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/logging/log4j/message/StructuredDataId;->makeId(Ljava/lang/String;I)Lorg/apache/logging/log4j/message/StructuredDataId;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/apache/logging/log4j/message/StructuredDataId;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 254
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lorg/apache/logging/log4j/message/StructuredDataId;->formatTo(Ljava/lang/StringBuilder;)V

    .line 255
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
