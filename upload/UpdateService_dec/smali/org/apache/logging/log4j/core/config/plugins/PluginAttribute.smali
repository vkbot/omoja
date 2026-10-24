.class public interface abstract annotation Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
.super Ljava/lang/Object;
.source "PluginAttribute.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lorg/apache/logging/log4j/core/config/plugins/PluginAttribute;
        defaultBoolean = false
        defaultByte = 0x0t
        defaultChar = '\u0000'
        defaultClass = Ljava/lang/Object;
        defaultDouble = 0.0
        defaultFloat = 0.0f
        defaultInt = 0x0
        defaultLong = 0x0L
        defaultShort = 0x0s
        defaultString = ""
        sensitive = false
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;
    }
.end annotation

.annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginVisitorStrategy;
    value = Lorg/apache/logging/log4j/core/config/plugins/visitors/PluginAttributeVisitor;
.end annotation


# virtual methods
.method public abstract defaultBoolean()Z
.end method

.method public abstract defaultByte()B
.end method

.method public abstract defaultChar()C
.end method

.method public abstract defaultClass()Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public abstract defaultDouble()D
.end method

.method public abstract defaultFloat()F
.end method

.method public abstract defaultInt()I
.end method

.method public abstract defaultLong()J
.end method

.method public abstract defaultShort()S
.end method

.method public abstract defaultString()Ljava/lang/String;
.end method

.method public abstract sensitive()Z
.end method

.method public abstract value()Ljava/lang/String;
.end method
