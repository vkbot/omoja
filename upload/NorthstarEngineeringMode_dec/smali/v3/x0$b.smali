.class public final Lv3/x0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh3/f$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv3/x0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lh3/f$c<",
        "Lv3/x0;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic c:Lv3/x0$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lv3/x0$b;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lv3/x0$b;->c:Lv3/x0$b;

    return-void
.end method
