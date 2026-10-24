.class public final Lorg/apache/xmlbeans/impl/schema/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li5/q;


# static fields
.field public static final d:[Li5/w;


# instance fields
.field public final a:Ljava/util/LinkedHashMap;

.field public b:Li5/k;

.field public c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Li5/w;

    sput-object v0, Lorg/apache/xmlbeans/impl/schema/f;->d:[Li5/w;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/f;->a:Ljava/util/LinkedHashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/schema/f;->b:Li5/k;

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/xmlbeans/impl/schema/f;->c:I

    return-void
.end method


# virtual methods
.method public final a(Lorg/apache/xmlbeans/impl/schema/l;)V
    .locals 1

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/f;->a:Ljava/util/LinkedHashMap;

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/schema/l;->e:Ljavax/xml/namespace/QName;

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b()[Li5/w;
    .locals 1

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/f;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p0

    sget-object v0, Lorg/apache/xmlbeans/impl/schema/f;->d:[Li5/w;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Li5/w;

    check-cast p0, [Li5/w;

    return-object p0
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Lorg/apache/xmlbeans/impl/schema/f;->c:I

    return-void
.end method

.method public final d(Li5/k;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/f;->b:Li5/k;

    return-void
.end method
