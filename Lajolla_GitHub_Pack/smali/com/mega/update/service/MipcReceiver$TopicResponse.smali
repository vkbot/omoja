.class Lcom/mega/update/service/MipcReceiver$TopicResponse;
.super Ljava/lang/Object;
.source "MipcReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/update/service/MipcReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TopicResponse"
.end annotation


# instance fields
.field public errcode:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "errcode"
    .end annotation
.end field

.field public errstr:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "errstr"
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "errcode"    # I
    .param p2, "errstr"    # Ljava/lang/String;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/mega/update/service/MipcReceiver$TopicResponse;->errcode:I

    .line 29
    iput-object p2, p0, Lcom/mega/update/service/MipcReceiver$TopicResponse;->errstr:Ljava/lang/String;

    .line 30
    return-void
.end method
