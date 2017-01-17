<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<%
	class Database
		private cnn
		private recordSet_
		
		public function get_recordSet()
			get_recordSet = recordSet_
		end function
			
		public sub connect_database(obj_connect, obj_recordSet, connectString)
			set cnn = Server.CreateObject(obj_connect)
			set recordSet_ = Server.CreateObject(obj_recordSet)
			cnn.open (connectString)
		end sub
		
		public sub query_String(queryString_)
			recordSet_.open queryString_, cnn
		end sub

		public sub close_database
			recordSet_.close
			cnn.close
		end sub
	end class
%>
