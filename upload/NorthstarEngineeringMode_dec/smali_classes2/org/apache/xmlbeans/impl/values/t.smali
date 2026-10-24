.class public abstract Lorg/apache/xmlbeans/impl/values/t;
.super Lorg/apache/xmlbeans/impl/values/v;
.source "SourceFile"


# instance fields
.field private _val:Li5/h0;


# direct methods
.method public constructor <init>(Li5/c0;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/xmlbeans/impl/values/v;-><init>(Li5/c0;Z)V

    return-void
.end method

.method public static validateLexical(Ljava/lang/String;Li5/c0;Lj5/m;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/values/v;->validateLexical(Ljava/lang/String;Li5/c0;Lj5/m;)V

    return-void
.end method


# virtual methods
.method public getEnumValue()Li5/h0;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/h2;->check_dated()V

    iget-object p0, p0, Lorg/apache/xmlbeans/impl/values/t;->_val:Li5/h0;

    return-object p0
.end method

.method public set_enum(Li5/h0;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/v;->schemaType()Li5/c0;

    move-result-object v0

    invoke-interface {v0}, Li5/c0;->M0()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/apache/xmlbeans/impl/values/x2;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p1}, Li5/h0;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-super {p0, v0}, Lorg/apache/xmlbeans/impl/values/v;->set_text(Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/values/t;->_val:Li5/h0;

    return-void
.end method

.method public set_nil()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/values/t;->_val:Li5/h0;

    invoke-super {p0}, Lorg/apache/xmlbeans/impl/values/u;->set_nil()V

    return-void
.end method

.method public set_text(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/v;->schemaType()Li5/c0;

    move-result-object v0

    invoke-interface {v0, p1}, Li5/c0;->F(Ljava/lang/String;)Li5/h0;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lorg/apache/xmlbeans/impl/values/v;->set_text(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/values/t;->_val:Li5/h0;

    return-void

    :cond_0
    new-instance v0, Lorg/apache/xmlbeans/impl/values/x2;

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/values/v;->schemaType()Li5/c0;

    move-result-object p0

    sget-object v1, Lj5/i;->a:Ljava/util/Map;

    invoke-static {p0, v1}, Lj5/i;->g(Li5/c0;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "string"

    filled-new-array {v1, p1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "cvc-enumeration-valid"

    invoke-direct {v0, p1, p0}, Lorg/apache/xmlbeans/impl/values/x2;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method
