.class public Lorg/apache/logging/log4j/core/appender/SmtpAppender$Builder;
.super Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;
.source "SmtpAppender.java"

# interfaces
.implements Lorg/apache/logging/log4j/core/util/Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/logging/log4j/core/appender/SmtpAppender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder<",
        "Lorg/apache/logging/log4j/core/appender/SmtpAppender$Builder;",
        ">;",
        "Lorg/apache/logging/log4j/core/util/Builder<",
        "Lorg/apache/logging/log4j/core/appender/SmtpAppender;",
        ">;"
    }
.end annotation


# instance fields
.field private bcc:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private bufferSize:I
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private cc:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private from:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private replyTo:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private smtpDebug:Z
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private smtpHost:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private smtpPassword:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
        sensitive = true
    .end annotation
.end field

.field private smtpPort:I
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation

    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/validation/constraints/ValidPort;
    .end annotation
.end field

.field private smtpProtocol:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private smtpUsername:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private sslConfiguration:Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginElement;
        value = "SSL"
    .end annotation
.end field

.field private subject:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field

.field private to:Ljava/lang/String;
    .annotation runtime Lorg/apache/logging/log4j/core/config/plugins/PluginBuilderAttribute;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 80
    invoke-direct {p0}, Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;-><init>()V

    .line 100
    const-string v0, "smtp"

    iput-object v0, p0, Lorg/apache/logging/log4j/core/appender/SmtpAppender$Builder;->smtpProtocol:Ljava/lang/String;

    .line 119
    const/16 v0, 0x200

    iput v0, p0, Lorg/apache/logging/log4j/core/appender/SmtpAppender$Builder;->bufferSize:I

    return-void
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 80
    invoke-virtual {p0}, Lorg/apache/logging/log4j/core/appender/SmtpAppender$Builder;->build()Lorg/apache/logging/log4j/core/appender/SmtpAppender;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/logging/log4j/core/appender/SmtpAppender;
    .locals 25

    .line 258
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/SmtpAppender$Builder;->getLayout()Lorg/apache/logging/log4j/core/Layout;

    move-result-object v1

    if-nez v1, :cond_0

    .line 259
    invoke-static {}, Lorg/apache/logging/log4j/core/layout/HtmlLayout;->createDefaultLayout()Lorg/apache/logging/log4j/core/layout/HtmlLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/appender/SmtpAppender$Builder;->setLayout(Lorg/apache/logging/log4j/core/Layout;)Lorg/apache/logging/log4j/core/appender/SmtpAppender$Builder;

    .line 261
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/SmtpAppender$Builder;->getFilter()Lorg/apache/logging/log4j/core/Filter;

    move-result-object v1

    if-nez v1, :cond_1

    .line 262
    const/4 v1, 0x0

    invoke-static {v1, v1, v1}, Lorg/apache/logging/log4j/core/filter/ThresholdFilter;->createFilter(Lorg/apache/logging/log4j/Level;Lorg/apache/logging/log4j/core/Filter$Result;Lorg/apache/logging/log4j/core/Filter$Result;)Lorg/apache/logging/log4j/core/filter/ThresholdFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/logging/log4j/core/appender/SmtpAppender$Builder;->setFilter(Lorg/apache/logging/log4j/core/Filter;)Lorg/apache/logging/log4j/core/appender/SmtpAppender$Builder;

    .line 264
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/SmtpAppender$Builder;->getConfiguration()Lorg/apache/logging/log4j/core/config/Configuration;

    move-result-object v2

    iget-object v3, v0, Lorg/apache/logging/log4j/core/appender/SmtpAppender$Builder;->to:Ljava/lang/String;

    iget-object v4, v0, Lorg/apache/logging/log4j/core/appender/SmtpAppender$Builder;->cc:Ljava/lang/String;

    iget-object v5, v0, Lorg/apache/logging/log4j/core/appender/SmtpAppender$Builder;->bcc:Ljava/lang/String;

    iget-object v6, v0, Lorg/apache/logging/log4j/core/appender/SmtpAppender$Builder;->from:Ljava/lang/String;

    iget-object v7, v0, Lorg/apache/logging/log4j/core/appender/SmtpAppender$Builder;->replyTo:Ljava/lang/String;

    iget-object v8, v0, Lorg/apache/logging/log4j/core/appender/SmtpAppender$Builder;->subject:Ljava/lang/String;

    iget-object v9, v0, Lorg/apache/logging/log4j/core/appender/SmtpAppender$Builder;->smtpProtocol:Ljava/lang/String;

    iget-object v10, v0, Lorg/apache/logging/log4j/core/appender/SmtpAppender$Builder;->smtpHost:Ljava/lang/String;

    iget v11, v0, Lorg/apache/logging/log4j/core/appender/SmtpAppender$Builder;->smtpPort:I

    iget-object v12, v0, Lorg/apache/logging/log4j/core/appender/SmtpAppender$Builder;->smtpUsername:Ljava/lang/String;

    iget-object v13, v0, Lorg/apache/logging/log4j/core/appender/SmtpAppender$Builder;->smtpPassword:Ljava/lang/String;

    iget-boolean v14, v0, Lorg/apache/logging/log4j/core/appender/SmtpAppender$Builder;->smtpDebug:Z

    .line 266
    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/SmtpAppender$Builder;->getFilter()Lorg/apache/logging/log4j/core/Filter;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    iget v1, v0, Lorg/apache/logging/log4j/core/appender/SmtpAppender$Builder;->bufferSize:I

    move/from16 v16, v1

    iget-object v1, v0, Lorg/apache/logging/log4j/core/appender/SmtpAppender$Builder;->sslConfiguration:Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;

    .line 264
    move-object/from16 v17, v1

    invoke-static/range {v2 .. v17}, Lorg/apache/logging/log4j/core/net/SmtpManager;->getSmtpManager(Lorg/apache/logging/log4j/core/config/Configuration;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILorg/apache/logging/log4j/core/net/ssl/SslConfiguration;)Lorg/apache/logging/log4j/core/net/SmtpManager;

    move-result-object v1

    .line 267
    .local v1, "smtpManager":Lorg/apache/logging/log4j/core/net/SmtpManager;
    new-instance v2, Lorg/apache/logging/log4j/core/appender/SmtpAppender;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/SmtpAppender$Builder;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/SmtpAppender$Builder;->getFilter()Lorg/apache/logging/log4j/core/Filter;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/SmtpAppender$Builder;->getLayout()Lorg/apache/logging/log4j/core/Layout;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/SmtpAppender$Builder;->isIgnoreExceptions()Z

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lorg/apache/logging/log4j/core/appender/SmtpAppender$Builder;->getPropertyArray()[Lorg/apache/logging/log4j/core/config/Property;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v17, v2

    move-object/from16 v21, v1

    invoke-direct/range {v17 .. v24}, Lorg/apache/logging/log4j/core/appender/SmtpAppender;-><init>(Ljava/lang/String;Lorg/apache/logging/log4j/core/Filter;Lorg/apache/logging/log4j/core/Layout;Lorg/apache/logging/log4j/core/net/SmtpManager;Z[Lorg/apache/logging/log4j/core/config/Property;Lorg/apache/logging/log4j/core/appender/SmtpAppender$1;)V

    return-object v2
.end method

.method public setBcc(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/SmtpAppender$Builder;
    .locals 0
    .param p1, "bcc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "bcc"
        }
    .end annotation

    .line 145
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/SmtpAppender$Builder;->bcc:Ljava/lang/String;

    .line 146
    return-object p0
.end method

.method public setBufferSize(I)Lorg/apache/logging/log4j/core/appender/SmtpAppender$Builder;
    .locals 0
    .param p1, "bufferSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "bufferSize"
        }
    .end annotation

    .line 226
    iput p1, p0, Lorg/apache/logging/log4j/core/appender/SmtpAppender$Builder;->bufferSize:I

    .line 227
    return-object p0
.end method

.method public setCc(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/SmtpAppender$Builder;
    .locals 0
    .param p1, "cc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "cc"
        }
    .end annotation

    .line 137
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/SmtpAppender$Builder;->cc:Ljava/lang/String;

    .line 138
    return-object p0
.end method

.method public setFilter(Lorg/apache/logging/log4j/core/Filter;)Lorg/apache/logging/log4j/core/appender/SmtpAppender$Builder;
    .locals 1
    .param p1, "filter"    # Lorg/apache/logging/log4j/core/Filter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "filter"
        }
    .end annotation

    .line 253
    invoke-super {p0, p1}, Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;->setFilter(Lorg/apache/logging/log4j/core/Filter;)Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/SmtpAppender$Builder;

    return-object v0
.end method

.method public bridge synthetic setFilter(Lorg/apache/logging/log4j/core/Filter;)Lorg/apache/logging/log4j/core/filter/AbstractFilterable$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "filter"
        }
    .end annotation

    .line 80
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/appender/SmtpAppender$Builder;->setFilter(Lorg/apache/logging/log4j/core/Filter;)Lorg/apache/logging/log4j/core/appender/SmtpAppender$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setFrom(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/SmtpAppender$Builder;
    .locals 0
    .param p1, "from"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "from"
        }
    .end annotation

    .line 153
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/SmtpAppender$Builder;->from:Ljava/lang/String;

    .line 154
    return-object p0
.end method

.method public bridge synthetic setLayout(Lorg/apache/logging/log4j/core/Layout;)Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "layout"
        }
    .end annotation

    .line 80
    invoke-virtual {p0, p1}, Lorg/apache/logging/log4j/core/appender/SmtpAppender$Builder;->setLayout(Lorg/apache/logging/log4j/core/Layout;)Lorg/apache/logging/log4j/core/appender/SmtpAppender$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setLayout(Lorg/apache/logging/log4j/core/Layout;)Lorg/apache/logging/log4j/core/appender/SmtpAppender$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "layout"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/logging/log4j/core/Layout<",
            "+",
            "Ljava/io/Serializable;",
            ">;)",
            "Lorg/apache/logging/log4j/core/appender/SmtpAppender$Builder;"
        }
    .end annotation

    .line 244
    .local p1, "layout":Lorg/apache/logging/log4j/core/Layout;, "Lorg/apache/logging/log4j/core/Layout<+Ljava/io/Serializable;>;"
    invoke-super {p0, p1}, Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;->setLayout(Lorg/apache/logging/log4j/core/Layout;)Lorg/apache/logging/log4j/core/appender/AbstractAppender$Builder;

    move-result-object v0

    check-cast v0, Lorg/apache/logging/log4j/core/appender/SmtpAppender$Builder;

    return-object v0
.end method

.method public setReplyTo(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/SmtpAppender$Builder;
    .locals 0
    .param p1, "replyTo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "replyTo"
        }
    .end annotation

    .line 161
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/SmtpAppender$Builder;->replyTo:Ljava/lang/String;

    .line 162
    return-object p0
.end method

.method public setSmtpDebug(Z)Lorg/apache/logging/log4j/core/appender/SmtpAppender$Builder;
    .locals 0
    .param p1, "smtpDebug"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "smtpDebug"
        }
    .end annotation

    .line 218
    iput-boolean p1, p0, Lorg/apache/logging/log4j/core/appender/SmtpAppender$Builder;->smtpDebug:Z

    .line 219
    return-object p0
.end method

.method public setSmtpHost(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/SmtpAppender$Builder;
    .locals 0
    .param p1, "smtpHost"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "smtpHost"
        }
    .end annotation

    .line 186
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/SmtpAppender$Builder;->smtpHost:Ljava/lang/String;

    .line 187
    return-object p0
.end method

.method public setSmtpPassword(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/SmtpAppender$Builder;
    .locals 0
    .param p1, "smtpPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "smtpPassword"
        }
    .end annotation

    .line 210
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/SmtpAppender$Builder;->smtpPassword:Ljava/lang/String;

    .line 211
    return-object p0
.end method

.method public setSmtpPort(I)Lorg/apache/logging/log4j/core/appender/SmtpAppender$Builder;
    .locals 0
    .param p1, "smtpPort"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "smtpPort"
        }
    .end annotation

    .line 194
    iput p1, p0, Lorg/apache/logging/log4j/core/appender/SmtpAppender$Builder;->smtpPort:I

    .line 195
    return-object p0
.end method

.method public setSmtpProtocol(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/SmtpAppender$Builder;
    .locals 0
    .param p1, "smtpProtocol"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "smtpProtocol"
        }
    .end annotation

    .line 178
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/SmtpAppender$Builder;->smtpProtocol:Ljava/lang/String;

    .line 179
    return-object p0
.end method

.method public setSmtpUsername(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/SmtpAppender$Builder;
    .locals 0
    .param p1, "smtpUsername"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "smtpUsername"
        }
    .end annotation

    .line 202
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/SmtpAppender$Builder;->smtpUsername:Ljava/lang/String;

    .line 203
    return-object p0
.end method

.method public setSslConfiguration(Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;)Lorg/apache/logging/log4j/core/appender/SmtpAppender$Builder;
    .locals 0
    .param p1, "sslConfiguration"    # Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "sslConfiguration"
        }
    .end annotation

    .line 234
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/SmtpAppender$Builder;->sslConfiguration:Lorg/apache/logging/log4j/core/net/ssl/SslConfiguration;

    .line 235
    return-object p0
.end method

.method public setSubject(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/SmtpAppender$Builder;
    .locals 0
    .param p1, "subject"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "subject"
        }
    .end annotation

    .line 170
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/SmtpAppender$Builder;->subject:Ljava/lang/String;

    .line 171
    return-object p0
.end method

.method public setTo(Ljava/lang/String;)Lorg/apache/logging/log4j/core/appender/SmtpAppender$Builder;
    .locals 0
    .param p1, "to"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "to"
        }
    .end annotation

    .line 129
    iput-object p1, p0, Lorg/apache/logging/log4j/core/appender/SmtpAppender$Builder;->to:Ljava/lang/String;

    .line 130
    return-object p0
.end method
