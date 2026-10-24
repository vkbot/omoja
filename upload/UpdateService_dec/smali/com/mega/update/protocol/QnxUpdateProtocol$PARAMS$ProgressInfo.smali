.class public Lcom/mega/update/protocol/QnxUpdateProtocol$PARAMS$ProgressInfo;
.super Ljava/lang/Object;
.source "QnxUpdateProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/update/protocol/QnxUpdateProtocol$PARAMS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProgressInfo"
.end annotation


# instance fields
.field public stage:I

.field public stagedec:Ljava/lang/String;

.field public stageprogress:I

.field public stagetime:I

.field public totalprogress:I

.field public totaltime:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
