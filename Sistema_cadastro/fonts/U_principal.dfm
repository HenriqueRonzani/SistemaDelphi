object frm_principal: Tfrm_principal
  Left = 0
  Top = 0
  Caption = 'Sistema de Cadastro'
  ClientHeight = 336
  ClientWidth = 587
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 317
    Width = 587
    Height = 19
    Panels = <
      item
        Alignment = taCenter
        Text = 'Aerials Tecnologia'
        Width = 120
      end
      item
        Alignment = taCenter
        Text = 'Henrique e Marco'
        Width = 120
      end
      item
        Alignment = taCenter
        Text = 'Data: '
        Width = 250
      end
      item
        Alignment = taCenter
        Text = 'Hora:'
        Width = 50
      end>
  end
  object pnl_topo: TPanel
    Left = 0
    Top = 0
    Width = 587
    Height = 41
    Align = alTop
    TabOrder = 1
  end
  object MainMenu1: TMainMenu
    Left = 536
    Top = 112
    object Arquivo1: TMenuItem
      Caption = 'Arquivo'
      object Abrir1: TMenuItem
        Caption = 'Abrir'
      end
      object Fechar1: TMenuItem
        Caption = 'Salvar'
      end
      object Salvar1: TMenuItem
        Caption = 'Fechar'
      end
    end
    object Cadastro1: TMenuItem
      Caption = 'Cadastro'
      object Clientes1: TMenuItem
        Caption = 'Clientes'
        OnClick = Clientes1Click
      end
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 536
    Top = 64
  end
end
