.class public final Lorg/apache/xmlbeans/impl/schema/d0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/schema/d0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljavax/xml/namespace/QName;

.field public final b:I


# direct methods
.method public constructor <init>(ILjavax/xml/namespace/QName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/schema/d0$a;->a:Ljavax/xml/namespace/QName;

    iput p1, p0, Lorg/apache/xmlbeans/impl/schema/d0$a;->b:I

    return-void
.end method
