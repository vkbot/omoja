.class public Lcom/callisto/auto/gatherer/model/PerInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private manufacturerName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "b_manufacturer_name"
    .end annotation
.end field

.field private perDevice:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "b_per_info"
    .end annotation
.end field

.field private perState:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "b_per_stat"
    .end annotation
.end field

.field private productId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "b_product_id"
    .end annotation
.end field

.field private productName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "b_product_name"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "NA"

    .line 2
    iput-object v0, p0, Lcom/callisto/auto/gatherer/model/PerInfo;->perDevice:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lcom/callisto/auto/gatherer/model/PerInfo;->productName:Ljava/lang/String;

    const/4 v1, -0x1

    .line 4
    iput v1, p0, Lcom/callisto/auto/gatherer/model/PerInfo;->productId:I

    .line 5
    iput-object v0, p0, Lcom/callisto/auto/gatherer/model/PerInfo;->manufacturerName:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/callisto/auto/gatherer/model/PerInfo;->perState:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "NA"

    .line 8
    iput-object v0, p0, Lcom/callisto/auto/gatherer/model/PerInfo;->productName:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/callisto/auto/gatherer/model/PerInfo;->manufacturerName:Ljava/lang/String;

    .line 10
    iput-object p1, p0, Lcom/callisto/auto/gatherer/model/PerInfo;->perDevice:Ljava/lang/String;

    .line 11
    iput p2, p0, Lcom/callisto/auto/gatherer/model/PerInfo;->productId:I

    .line 12
    iput-object p3, p0, Lcom/callisto/auto/gatherer/model/PerInfo;->perState:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public setManufacturerName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callisto/auto/gatherer/model/PerInfo;->manufacturerName:Ljava/lang/String;

    return-void
.end method

.method public setPerDevice(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callisto/auto/gatherer/model/PerInfo;->perDevice:Ljava/lang/String;

    return-void
.end method

.method public setPerStat(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callisto/auto/gatherer/model/PerInfo;->perState:Ljava/lang/String;

    return-void
.end method

.method public setProductId(I)V
    .locals 0

    iput p1, p0, Lcom/callisto/auto/gatherer/model/PerInfo;->productId:I

    return-void
.end method

.method public setProductName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/callisto/auto/gatherer/model/PerInfo;->productName:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{perDevice\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/callisto/auto/gatherer/model/PerInfo;->perDevice:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', productName\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callisto/auto/gatherer/model/PerInfo;->productName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', productId\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/callisto/auto/gatherer/model/PerInfo;->productId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\', manufacturerName\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callisto/auto/gatherer/model/PerInfo;->manufacturerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', perState\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/callisto/auto/gatherer/model/PerInfo;->perState:Ljava/lang/String;

    const-string v2, "\'}"

    invoke-static {v0, v1, v2}, Landroidx/activity/b;->f(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
