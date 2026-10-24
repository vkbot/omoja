.class public Lcom/mega/update/protocol/QnxUpdateProtocol$PARAMS$UpdateJson;
.super Ljava/lang/Object;
.source "QnxUpdateProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/update/protocol/QnxUpdateProtocol$PARAMS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UpdateJson"
.end annotation


# instance fields
.field public delta:I

.field public filename:Ljava/lang/String;

.field public ota_method:I

.field public sha256:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "sha256"    # Ljava/lang/String;
    .param p3, "ota_method"    # I
    .param p4, "delta"    # I

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/mega/update/protocol/QnxUpdateProtocol$PARAMS$UpdateJson;->filename:Ljava/lang/String;

    .line 31
    iput-object p2, p0, Lcom/mega/update/protocol/QnxUpdateProtocol$PARAMS$UpdateJson;->sha256:Ljava/lang/String;

    .line 32
    iput p3, p0, Lcom/mega/update/protocol/QnxUpdateProtocol$PARAMS$UpdateJson;->ota_method:I

    .line 33
    iput p4, p0, Lcom/mega/update/protocol/QnxUpdateProtocol$PARAMS$UpdateJson;->delta:I

    .line 34
    return-void
.end method
