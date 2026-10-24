.class public Lcom/mega/nexus/app/MegaNotificationChannel;
.super Ljava/lang/Object;
.source "MegaNotificationChannel.java"


# static fields
.field public static final USER_LOCKED_SHOW_BADGE:I = 0x80


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lockFields(Landroid/app/NotificationChannel;I)V
    .locals 0
    .param p0, "channel"    # Landroid/app/NotificationChannel;
    .param p1, "field"    # I

    .line 10
    invoke-virtual {p0, p1}, Landroid/app/NotificationChannel;->lockFields(I)V

    .line 11
    return-void
.end method
