.class public final Lcom/mega/engineeringmode/function/offlineconfiguration/Data;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private did:Ljava/lang/String;

.field private value:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/Data;->did:Ljava/lang/String;

    iput-object p2, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/Data;->value:Lorg/json/JSONArray;

    return-void
.end method

.method public static synthetic copy$default(Lcom/mega/engineeringmode/function/offlineconfiguration/Data;Ljava/lang/String;Lorg/json/JSONArray;ILjava/lang/Object;)Lcom/mega/engineeringmode/function/offlineconfiguration/Data;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/Data;->did:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/Data;->value:Lorg/json/JSONArray;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/mega/engineeringmode/function/offlineconfiguration/Data;->copy(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/mega/engineeringmode/function/offlineconfiguration/Data;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/Data;->did:Ljava/lang/String;

    return-object p0
.end method

.method public final component2()Lorg/json/JSONArray;
    .locals 0

    iget-object p0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/Data;->value:Lorg/json/JSONArray;

    return-object p0
.end method

.method public final copy(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/mega/engineeringmode/function/offlineconfiguration/Data;
    .locals 0

    new-instance p0, Lcom/mega/engineeringmode/function/offlineconfiguration/Data;

    invoke-direct {p0, p1, p2}, Lcom/mega/engineeringmode/function/offlineconfiguration/Data;-><init>(Ljava/lang/String;Lorg/json/JSONArray;)V

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/mega/engineeringmode/function/offlineconfiguration/Data;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/mega/engineeringmode/function/offlineconfiguration/Data;

    iget-object v1, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/Data;->did:Ljava/lang/String;

    iget-object v3, p1, Lcom/mega/engineeringmode/function/offlineconfiguration/Data;->did:Ljava/lang/String;

    invoke-static {v1, v3}, Lo3/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object p0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/Data;->value:Lorg/json/JSONArray;

    iget-object p1, p1, Lcom/mega/engineeringmode/function/offlineconfiguration/Data;->value:Lorg/json/JSONArray;

    invoke-static {p0, p1}, Lo3/h;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getDid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/Data;->did:Ljava/lang/String;

    return-object p0
.end method

.method public final getValue()Lorg/json/JSONArray;
    .locals 0

    iget-object p0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/Data;->value:Lorg/json/JSONArray;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/Data;->did:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/Data;->value:Lorg/json/JSONArray;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONArray;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final setDid(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/Data;->did:Ljava/lang/String;

    return-void
.end method

.method public final setValue(Lorg/json/JSONArray;)V
    .locals 0

    iput-object p1, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/Data;->value:Lorg/json/JSONArray;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Data(did="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/Data;->did:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/mega/engineeringmode/function/offlineconfiguration/Data;->value:Lorg/json/JSONArray;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
