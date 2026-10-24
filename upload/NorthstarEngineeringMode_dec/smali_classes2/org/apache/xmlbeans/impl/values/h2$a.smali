.class public final Lorg/apache/xmlbeans/impl/values/h2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj5/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/values/h2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lorg/apache/xmlbeans/XmlObject;

.field public final b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Li5/y0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lj5/q;Lorg/apache/xmlbeans/XmlObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/h2$a;->b:Ljava/util/Collection;

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/values/h2$a;->a:Lorg/apache/xmlbeans/XmlObject;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/h2$a;->a:Lorg/apache/xmlbeans/XmlObject;

    if-nez v0, :cond_0

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v4, 0x0

    new-instance v0, Li5/y0;

    const/4 v3, 0x0

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Li5/y0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    :cond_0
    sget-object v1, Li5/y0;->d1:Ljava/util/ResourceBundle;

    invoke-interface {v0}, Li5/j2;->newCursor()Li5/p0;

    move-result-object v0

    new-instance v1, Li5/y0;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3, v0}, Li5/y0;-><init>(Ljava/lang/String;Ljava/lang/String;ILi5/p0;)V

    move-object v0, v1

    :goto_0
    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/h2$a;->b:Ljava/util/Collection;

    invoke-interface {p0, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/values/h2$a;->a:Lorg/apache/xmlbeans/XmlObject;

    invoke-static {p1, p2, v0}, Li5/y0;->a(Ljava/lang/String;[Ljava/lang/Object;Lorg/apache/xmlbeans/XmlObject;)Li5/y0;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/h2$a;->b:Ljava/util/Collection;

    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method
