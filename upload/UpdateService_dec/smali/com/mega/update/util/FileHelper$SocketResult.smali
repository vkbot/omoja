.class public Lcom/mega/update/util/FileHelper$SocketResult;
.super Ljava/lang/Object;
.source "FileHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/update/util/FileHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SocketResult"
.end annotation


# instance fields
.field public desc:Ljava/lang/String;

.field public ipaddr:Ljava/lang/String;

.field public port:I

.field public result:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
