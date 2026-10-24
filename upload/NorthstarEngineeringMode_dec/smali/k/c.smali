.class public final Lk/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lk/b;

.field public final b:Lm/b;

.field public final c:Landroid/content/ContentResolver;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Lk/b;Lm/b;Landroid/content/ContentResolver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lk/c;->a:Lk/b;

    iput-object p3, p0, Lk/c;->b:Lm/b;

    iput-object p4, p0, Lk/c;->c:Landroid/content/ContentResolver;

    iput-object p1, p0, Lk/c;->d:Ljava/util/List;

    return-void
.end method
