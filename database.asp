<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<%
	class Database
		private connectString
		private cnn
		private record_set
		
		public sub set_connectString(connectStr)
			connectString = connectStr
		end sub
		
		public sub set_cnn(_cnn)
			set cnn =  Server.CreateObject(_cnn)
		end sub
		
		public sub set_record_set(record)
		end sub
		
		public function _open
		
		
	end class
%>
