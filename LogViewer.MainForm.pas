{
  Copyright (C) 2013-2016 Tim Sinaeve tim.sinaeve@gmail.com

  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
}

unit LogViewer.MainForm;

interface

uses
  Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,

  LogViewer.Messages.View, LogViewer.Interfaces, LogViewer.Receivers.WinIPC,
  LogViewer.Factories;

type
  TfrmMain = class(TForm)
  private
    FMessageViewer : TfrmMessagesView;
    FReceiver      : IChannelReceiver;
  public
    procedure AfterConstruction; override;

  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

{$REGION 'construction and destruction'}
procedure TfrmMain.AfterConstruction;
begin
  inherited AfterConstruction;
  FReceiver := TWinIPChannelReceiver.Create;
  FMessageViewer := TLogViewerFactories.CreateMessageView(
    Self,
    Self,
    FReceiver
  );
  FReceiver.Enabled := True;
end;
{$ENDREGION}


end.
