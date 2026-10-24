.class public final Lorg/apache/xmlbeans/impl/schema/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li5/b0;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/schema/q;->a:Ljava/lang/String;

    iput p2, p0, Lorg/apache/xmlbeans/impl/schema/q;->b:I

    iput-object p3, p0, Lorg/apache/xmlbeans/impl/schema/q;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/q;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final getIntValue()I
    .locals 0

    iget p0, p0, Lorg/apache/xmlbeans/impl/schema/q;->b:I

    return p0
.end method

.method public final getString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/schema/q;->a:Ljava/lang/String;

    return-object p0
.end method
