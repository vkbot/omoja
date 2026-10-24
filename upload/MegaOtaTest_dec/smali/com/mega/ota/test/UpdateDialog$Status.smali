.class final Lcom/mega/ota/test/UpdateDialog$Status;
.super Ljava/lang/Object;
.source "UpdateDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/ota/test/UpdateDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Status"
.end annotation


# static fields
.field public static final STATUS_COPYED_FAIL:I = 0x4

.field public static final STATUS_COPYED_OK:I = 0x3

.field public static final STATUS_COPYING:I = 0x2

.field public static final STATUS_SELECT_FILE:I = 0x1

.field public static final STATUS_UPDATED_FAIL:I = 0x7

.field public static final STATUS_UPDATED_OK:I = 0x6

.field public static final STATUS_UPDATING:I = 0x5


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
