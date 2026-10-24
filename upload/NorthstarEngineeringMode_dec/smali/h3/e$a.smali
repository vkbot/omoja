.class public final Lh3/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh3/f$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh3/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lh3/f$c<",
        "Lh3/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic c:Lh3/e$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lh3/e$a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lh3/e$a;->c:Lh3/e$a;

    return-void
.end method
