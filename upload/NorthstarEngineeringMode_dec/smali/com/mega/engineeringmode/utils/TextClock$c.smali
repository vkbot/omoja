.class public final Lcom/mega/engineeringmode/utils/TextClock$c;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mega/engineeringmode/utils/TextClock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lcom/mega/engineeringmode/utils/TextClock;


# direct methods
.method public constructor <init>(Lcom/mega/engineeringmode/utils/TextClock;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/mega/engineeringmode/utils/TextClock$c;->a:Lcom/mega/engineeringmode/utils/TextClock;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    .line 1
    sget p1, Lcom/mega/engineeringmode/utils/TextClock;->q:I

    iget-object p0, p0, Lcom/mega/engineeringmode/utils/TextClock$c;->a:Lcom/mega/engineeringmode/utils/TextClock;

    .line 2
    invoke-virtual {p0}, Lcom/mega/engineeringmode/utils/TextClock;->a()V

    .line 3
    invoke-virtual {p0}, Lcom/mega/engineeringmode/utils/TextClock;->d()V

    return-void
.end method

.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 4
    sget p1, Lcom/mega/engineeringmode/utils/TextClock;->q:I

    iget-object p0, p0, Lcom/mega/engineeringmode/utils/TextClock$c;->a:Lcom/mega/engineeringmode/utils/TextClock;

    .line 5
    invoke-virtual {p0}, Lcom/mega/engineeringmode/utils/TextClock;->a()V

    .line 6
    invoke-virtual {p0}, Lcom/mega/engineeringmode/utils/TextClock;->d()V

    return-void
.end method
