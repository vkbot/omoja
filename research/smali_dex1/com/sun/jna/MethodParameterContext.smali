.class public Lcom/sun/jna/MethodParameterContext;
.super Lcom/sun/jna/FunctionParameterContext;
.source "r8-map-id-94e2637d1b30c6542972a7fc4ced35aa6da258c4e6702fc7c9cbf0ebc32bec75"


# instance fields
.field private method:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Lcom/sun/jna/Function;[Ljava/lang/Object;ILjava/lang/reflect/Method;)V
    .registers 5

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/sun/jna/FunctionParameterContext;-><init>(Lcom/sun/jna/Function;[Ljava/lang/Object;I)V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lcom/sun/jna/MethodParameterContext;->method:Ljava/lang/reflect/Method;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/reflect/Method;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/sun/jna/MethodParameterContext;->method:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    return-object v0
.end method
