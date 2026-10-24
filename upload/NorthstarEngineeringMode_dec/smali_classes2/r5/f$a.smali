.class public final Lr5/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr5/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public a:Lr5/h;

.field public final b:Ljava/util/ArrayList;

.field public final synthetic c:Lr5/f;


# direct methods
.method public constructor <init>(Lr5/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr5/f$a;->c:Lr5/f;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lr5/f$a;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lr5/f$a;->a:Lr5/h;

    iget-boolean v1, v0, Lr5/h;->g:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lr5/h;->h:Lr5/h;

    iput-object v0, p0, Lr5/f$a;->a:Lr5/h;

    return-void

    :cond_0
    iget-object v0, v0, Lr5/h;->f:Lr5/h;

    iput-object v0, p0, Lr5/f$a;->a:Lr5/h;

    :goto_0
    iget-object v0, p0, Lr5/f$a;->a:Lr5/h;

    iget-boolean v1, v0, Lr5/h;->b:Z

    if-nez v1, :cond_2

    const/4 v1, 0x0

    :goto_1
    iget-boolean v2, v0, Lr5/h;->b:Z

    if-nez v2, :cond_2

    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Lr5/f$a;->c:Lr5/f;

    iget-object v3, v3, Lr5/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    sub-int/2addr v4, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/xml/namespace/QName;

    invoke-virtual {v0, v1}, Lr5/h;->a(Ljavax/xml/namespace/QName;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lr5/f$a;->a:Lr5/h;

    iget-object v0, v0, Lr5/h;->f:Lr5/h;

    iput-object v0, p0, Lr5/f$a;->a:Lr5/h;

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lr5/h;->f:Lr5/h;

    move v1, v2

    goto :goto_1

    :cond_2
    return-void
.end method
