.class public abstract Landroid/support/v4/media/session/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/c$b;,
        Landroid/support/v4/media/session/c$a;
    }
.end annotation


# instance fields
.field public a:Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/support/v4/media/session/c$a;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/c$a;-><init>(Landroid/support/v4/media/session/c;)V

    new-instance p0, Landroid/support/v4/media/session/g;

    invoke-direct {p0, v0}, Landroid/support/v4/media/session/g;-><init>(Landroid/support/v4/media/session/c$a;)V

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 0

    return-void
.end method
